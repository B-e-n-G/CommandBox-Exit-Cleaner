component {
  property name="tempDir" inject="tempDir@constants";

  function run() {
    tempDir = fileSystemUtil.resolvePath( tempDir );

    if ( directoryExists( tempDir ) ) {
      directoryDelete( tempDir, true );
    }

    directoryCreate( tempDir, true, true );
  }
}