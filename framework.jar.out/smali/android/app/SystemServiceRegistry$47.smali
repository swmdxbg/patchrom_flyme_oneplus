.class final Landroid/app/SystemServiceRegistry$47;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/net/wifi/RttManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/net/wifi/RttManager;
    .locals 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 550
    const-string/jumbo v2, "rttmanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 551
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/IRttManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IRttManager;

    move-result-object v1

    .line 552
    .local v1, "service":Landroid/net/wifi/IRttManager;
    new-instance v2, Landroid/net/wifi/RttManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    .line 553
    invoke-static {}, Landroid/net/ConnectivityThread;->getInstanceLooper()Landroid/os/Looper;

    move-result-object v4

    .line 552
    invoke-direct {v2, v3, v1, v4}, Landroid/net/wifi/RttManager;-><init>(Landroid/content/Context;Landroid/net/wifi/IRttManager;Landroid/os/Looper;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$47;->createService(Landroid/app/ContextImpl;)Landroid/net/wifi/RttManager;

    move-result-object v0

    return-object v0
.end method
