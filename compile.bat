set classpath=.;%classpath%

javac com\jw\server\*.java
javac com\jw\client\*.java

rmic -d . com.jw.server.RemoteDriverImpl
rmic -d . com.jw.server.RemoteConnectionImpl
rmic -d . com.jw.server.RemoteStatementImpl
rmic -d . com.jw.server.RemoteResultSetImpl

jar cvf JWServerDriver.jar com/jw/server/IRemoteConnection.class com/jw/server/IRemoteDriver.class com/jw/server/IRemoteResultSet.class com/jw/server/IRemoteStatement.class com/jw/server/RemoteDriverImpl_Stub.class com/jw/server/RemoteConnectionImpl_Stub.class com/jw/server/RemoteStatementImpl_Stub.class com/jw/server/RemoteResultSetImpl_Stub.class com/jw/server/RemoteDriverImpl_Skel.class com/jw/server/RemoteConnectionImpl_Skel.class com/jw/server/RemoteStatementImpl_Skel.class com/jw/server/RemoteResultSetImpl_Skel.class com/jw/server/RemoteDriverImpl.class com/jw/server/RemoteConnectionImpl.class com/jw/server/RemoteStatementImpl.class com/jw/server/RemoteResultSetImpl.class com/jw/server/ConnectionPool.class com/jw/server/DriverLog.class com/jw/server/ResultSetChunk.class