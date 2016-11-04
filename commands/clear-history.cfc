component {
  function run() {
    shell.callCommand( 'history type=command --clear' );
    shell.callCommand( 'history type=scriptREPL --clear' );
    shell.callCommand( 'history type=tagREPL --clear' );
  }
}