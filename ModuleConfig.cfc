component {
  function configure() {
    settings = {
      cleanOnExit = true
    };
  }

  function onCLIExit() {
    if ( settings.cleanOnExit ) {
      shell.callCommand( 'history type=command --clear' );
      shell.callCommand( 'history type=scriptREPL --clear' );
      shell.callCommand( 'history type=tagREPL --clear' );
      shell.callCommand( 'server forget --all' );
    }
  }
}