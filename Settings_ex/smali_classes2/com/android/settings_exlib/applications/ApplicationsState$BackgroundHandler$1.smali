.class Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 18
    .param p1, "stats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z

    .prologue
    .line 964
    const/4 v10, 0x0

    .line 965
    .local v10, "sizeChanged":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v13, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v13

    .line 967
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 968
    .local v11, "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    if-nez v11, :cond_0

    monitor-exit v13

    .line 970
    return-void

    .line 972
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 973
    .local v2, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v2, :cond_3

    .line 974
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 975
    const/4 v12, 0x0

    :try_start_2
    iput-boolean v12, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 976
    const-wide/16 v14, 0x0

    iput-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 977
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 978
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalObbSize:J

    move-wide/from16 v16, v0

    .line 977
    add-long v4, v14, v16

    .line 979
    .local v4, "externalCodeSize":J
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 980
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    move-wide/from16 v16, v0

    .line 979
    add-long v6, v14, v16

    .line 981
    .local v6, "externalDataSize":J
    add-long v14, v4, v6

    .line 982
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->-wrap3(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v16

    .line 981
    add-long v8, v14, v16

    .line 983
    .local v8, "newSize":J
    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v12, v14, v8

    if-nez v12, :cond_1

    .line 984
    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->cacheSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_5

    .line 990
    :cond_1
    :goto_0
    iput-wide v8, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    .line 991
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->cacheSize:J

    .line 992
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 993
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 994
    iput-wide v4, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    .line 995
    iput-wide v6, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    .line 996
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    .line 997
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    invoke-static {v12, v14, v15}, Lcom/android/settings_exlib/applications/ApplicationsState;->-wrap1(Lcom/android/settings_exlib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    .line 998
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->-wrap3(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->internalSize:J

    .line 999
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->internalSize:J

    invoke-static {v12, v14, v15}, Lcom/android/settings_exlib/applications/ApplicationsState;->-wrap1(Lcom/android/settings_exlib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    .line 1000
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->-wrap2(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalSize:J

    .line 1001
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalSize:J

    invoke-static {v12, v14, v15}, Lcom/android/settings_exlib/applications/ApplicationsState;->-wrap1(Lcom/android/settings_exlib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1004
    const/4 v10, 0x1

    :cond_2
    :try_start_3
    monitor-exit v2

    .line 1007
    if-eqz v10, :cond_3

    .line 1008
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    .line 1009
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    const/4 v15, 0x4

    .line 1008
    invoke-virtual {v12, v15, v14}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1010
    .local v3, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v12, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1013
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "externalCodeSize":J
    .end local v6    # "externalDataSize":J
    .end local v8    # "newSize":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 1014
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1015
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/pm/PackageStats;->userHandle:I

    if-ne v12, v14, :cond_4

    .line 1016
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    const/4 v14, 0x0

    iput-object v14, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 1017
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    monitor-exit v13

    .line 963
    return-void

    .line 985
    .restart local v4    # "externalCodeSize":J
    .restart local v6    # "externalDataSize":J
    .restart local v8    # "newSize":J
    :cond_5
    :try_start_4
    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->codeSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->codeSize:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-nez v12, :cond_1

    .line 986
    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->dataSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-nez v12, :cond_1

    .line 987
    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v12, v14, v4

    if-nez v12, :cond_1

    .line 988
    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v12, v14, v6

    if-nez v12, :cond_1

    .line 989
    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    move-wide/from16 v16, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_2

    goto/16 :goto_0

    .line 974
    .end local v4    # "externalCodeSize":J
    .end local v6    # "externalDataSize":J
    .end local v8    # "newSize":J
    :catchall_0
    move-exception v12

    :try_start_5
    monitor-exit v2

    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 965
    .end local v2    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v11    # "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :catchall_1
    move-exception v12

    monitor-exit v13

    throw v12
.end method
