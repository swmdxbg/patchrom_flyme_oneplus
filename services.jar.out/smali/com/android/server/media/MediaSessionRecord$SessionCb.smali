.class Lcom/android/server/media/MediaSessionRecord$SessionCb;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionCb"
.end annotation


# instance fields
.field private final mCb:Landroid/media/session/ISessionCallback;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method static synthetic -get0(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;

    .prologue
    .line 997
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 997
    return-void
.end method


# virtual methods
.method public adjustVolume(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 1204
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1}, Landroid/media/session/ISessionCallback;->onAdjustVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    :goto_0
    return-void

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in adjustVolume."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public fastForward()V
    .locals 3

    .prologue
    .line 1135
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onFastForward()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    :goto_0
    return-void

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in fastForward."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRemoteControlClientNowPlayingEntries()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1186
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "getRemoteControlClientNowPlayingEntries in SessionCb"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->getRemoteControlClientNowPlayingEntries()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    :goto_0
    return-void

    .line 1189
    :catch_0
    move-exception v0

    .line 1190
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in getRemoteControlClientNowPlayingEntries."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public next()V
    .locals 3

    .prologue
    .line 1119
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onNext()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    :goto_0
    return-void

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in next."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1103
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    :goto_0
    return-void

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in pause."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public play()V
    .locals 3

    .prologue
    .line 1063
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPlay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :goto_0
    return-void

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in play."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1071
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    :goto_0
    return-void

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in playFromMediaId."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1079
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    :goto_0
    return-void

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in playFromSearch."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1087
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    :goto_0
    return-void

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in playFromUri."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 1031
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPrepare()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_0
    return-void

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in prepare."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1039
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :goto_0
    return-void

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in prepareFromMediaId."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1047
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :goto_0
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in prepareFromSearch."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1055
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    :goto_0
    return-void

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in prepareFromUri."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public previous()V
    .locals 3

    .prologue
    .line 1127
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPrevious()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :goto_0
    return-void

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in previous."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public rate(Landroid/media/Rating;)V
    .locals 3
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 1196
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1}, Landroid/media/session/ISessionCallback;->onRate(Landroid/media/Rating;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    :goto_0
    return-void

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in rate."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public rewind()V
    .locals 3

    .prologue
    .line 1143
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onRewind()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    :goto_0
    return-void

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in rewind."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 1150
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "seekTo in SessionCb"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onSeekTo(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    :goto_0
    return-void

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in seekTo."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1015
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionCallback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :goto_0
    return-void

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in sendCommand."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1023
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    :goto_0
    return-void

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in sendCustomAction."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "sequenceId"    # I
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1002
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1003
    .local v1, "mediaButtonIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1005
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v2, v1, p2, p3}, Landroid/media/session/ISessionCallback;->onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    const/4 v2, 0x1

    return v2

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaSessionRecord"

    const-string/jumbo v3, "Remote failure in sendMediaRequest."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1010
    const/4 v2, 0x0

    return v2
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .locals 3

    .prologue
    .line 1162
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "setRemoteControlClientBrowsedPlayer in SessionCb"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->setRemoteControlClientBrowsedPlayer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    :goto_0
    return-void

    .line 1165
    :catch_0
    move-exception v0

    .line 1166
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in setRemoteControlClientBrowsedPlayer."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "scope"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1174
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "setRemoteControlClientPlayItem in SessionCb"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionCallback;->setRemoteControlClientPlayItem(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :goto_0
    return-void

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in setRemoteControlClientPlayItem."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVolumeTo(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1}, Landroid/media/session/ISessionCallback;->onSetVolumeTo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    :goto_0
    return-void

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in setVolumeTo."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public skipToTrack(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 1095
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onSkipToTrack(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :goto_0
    return-void

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in skipToTrack"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 1111
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :goto_0
    return-void

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v2, "Remote failure in stop."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
