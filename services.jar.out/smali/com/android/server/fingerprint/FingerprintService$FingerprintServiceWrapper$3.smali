.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$callingUid:I

.field final synthetic val$callingUserId:I

.field final synthetic val$flags:I

.field final synthetic val$groupId:I

.field final synthetic val$opId:J

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$pid:I

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Ljava/lang/String;IIJLandroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .param p2, "val$opPackageName"    # Ljava/lang/String;
    .param p3, "val$callingUid"    # I
    .param p4, "val$pid"    # I
    .param p5, "val$opId"    # J
    .param p7, "val$token"    # Landroid/os/IBinder;
    .param p8, "val$callingUserId"    # I
    .param p9, "val$groupId"    # I
    .param p10, "val$receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p11, "val$flags"    # I
    .param p12, "val$restricted"    # Z

    .prologue
    .line 863
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$callingUid:I

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$pid:I

    iput-wide p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opId:J

    iput-object p7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$token:Landroid/os/IBinder;

    iput p8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$callingUserId:I

    iput p9, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$groupId:I

    iput-object p10, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput p11, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$flags:I

    iput-boolean p12, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$restricted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 866
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opPackageName:Ljava/lang/String;

    .line 867
    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$callingUid:I

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$pid:I

    .line 866
    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->-wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;ZII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 868
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "authenticate(): reject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void

    .line 875
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->-wrap0(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v2, v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->-wrap2(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isKeyguardDone()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    .line 884
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get0(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_token"

    iget-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opId:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_4

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 888
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opId:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get9(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;

    move-result-object v11

    .line 889
    .local v11, "pmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;>;"
    :goto_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get3(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 890
    .local v12, "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    if-nez v12, :cond_2

    .line 891
    new-instance v12, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .end local v12    # "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {v12, v0, v6}, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;)V

    .line 892
    .restart local v12    # "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get3(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, v12}, Lcom/android/server/fingerprint/FingerprintService;->-set3(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 896
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$token:Landroid/os/IBinder;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opId:J

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$callingUserId:I

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$groupId:I

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 897
    iget v7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$flags:I

    iget-boolean v8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$restricted:Z

    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opPackageName:Ljava/lang/String;

    .line 896
    invoke-static/range {v0 .. v9}, Lcom/android/server/fingerprint/FingerprintService;->-wrap9(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    .line 865
    return-void

    .line 876
    .end local v11    # "pmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;>;"
    .end local v12    # "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    :cond_3
    :try_start_1
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "authenticate(): reject app authenticating due to systemui in used"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 877
    return-void

    .line 884
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 888
    :cond_5
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;

    move-result-object v11

    .restart local v11    # "pmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;>;"
    goto :goto_2

    .line 879
    .end local v11    # "pmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;>;"
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method
