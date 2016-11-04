component {
  function configure() {
    settings = {
      cleanOnExit = true
    };
  }

  function onCLIExit() {
    if ( settings.cleanOnExit ) {
      shell.callCommand( 'clear-history' );
      shell.callCommand( 'clear-system-log' );
      shell.callCommand( 'clear-temp' );
      shell.callCommand( 'server forget --all --force' );
    }
  }
}