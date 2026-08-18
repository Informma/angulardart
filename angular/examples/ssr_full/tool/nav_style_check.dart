import 'dart:io';

import 'package:puppeteer/puppeteer.dart';

Future<void> main() async {
  final browser = await puppeteer.launch(
    headless: true,
    noSandboxFlag: true,
    args: ['--disable-gpu', '--disable-crash-reporter'],
  );
  final page = await browser.newPage();
  await page.goto('http://localhost:4000/about',
      wait: Until.networkAlmostIdle);

  Future<List<String>> styleTags() async {
    final raw = await page.evaluate(
      'Array.from(document.querySelectorAll("head style")).map(s => s.id || "plain")',
    );
    return (raw as List).cast<String>();
  }

  Future<int> styleCount() async =>
      (await page.evaluate('document.querySelectorAll("head style").length'))
          as int;

  Future<void> clickNav(String text) async {
    final clicked = await page.evaluate(
      '''(() => {
        const links = Array.from(document.querySelectorAll('a'));
        const link = links.find(a => a.textContent.trim().startsWith('$text'));
        if (!link) return false;
        link.click();
        return true;
      })()''',
    );
    if (clicked != true) {
      throw StateError('Link "$text" not found');
    }
    await Future<void>.delayed(const Duration(milliseconds: 1500));
  }

  stdout.writeln('initial load /about: styles=${await styleCount()} tags=${await styleTags()}');

  final sequence = ['Dashboard', 'Contact', 'About', 'Home', 'Dashboard', 'About', 'Contact'];
  for (final nav in sequence) {
    await clickNav(nav);
    stdout.writeln('after -> $nav: styles=${await styleCount()} tags=${await styleTags()}');
  }

  await browser.close();
}