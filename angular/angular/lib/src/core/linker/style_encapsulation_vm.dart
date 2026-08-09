/// VM-compatible style encapsulation stubs.
///
/// Provides no-op implementations for style management on native/AOT builds
/// (server-side rendering) where `package:web` is not available.
library;

/// Clears all component styles from the DOM.
///
/// On native/AOT builds, this is a no-op since there's no browser DOM to clear
/// styles from. This function should only be called in development mode.
void debugClearComponentStyles() {
  // No-op on VM - no browser DOM to manage styles for
}
