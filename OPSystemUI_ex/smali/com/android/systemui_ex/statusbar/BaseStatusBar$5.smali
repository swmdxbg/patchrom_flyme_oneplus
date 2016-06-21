.class Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;
.super Landroid/service/notification/NotificationListenerService;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 4

    .prologue
    .line 544
    sget-boolean v2, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "StatusBar"

    const-string v3, "onListenerConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 546
    .local v1, "notifications":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    .line 547
    .local v0, "currentRanking":Landroid/service/notification/NotificationListenerService$RankingMap;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    new-instance v3, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$1;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 555
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 560
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationPosted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 626
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 642
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar"

    const-string v1, "onRankingUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$4;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 649
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 631
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$3;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 638
    return-void
.end method
