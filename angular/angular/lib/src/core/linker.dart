// Public API for compiler

export 'linker/component_factory.dart' show ComponentRef, ComponentFactory;
export 'linker/component_loader.dart' show ComponentLoader;
export 'linker/element_ref.dart' show ElementRef;
export 'linker/ng_content_ref.dart' show NgContentRef;
export 'linker/style_encapsulation.dart' if (dart.library.io) 'linker/style_encapsulation_vm.dart';
export 'linker/template_ref.dart' show TemplateRef;
export 'linker/view_container_ref.dart' show ViewContainerRef;
export 'linker/view_ref.dart';
