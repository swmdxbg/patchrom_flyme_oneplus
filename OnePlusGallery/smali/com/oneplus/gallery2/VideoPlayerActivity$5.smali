.class Lcom/oneplus/gallery2/VideoPlayerActivity$5;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$5;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$5;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery2/VideoPlayerActivity;->cancelHideControlsUI()V
    invoke-static {v0}, Lcom/oneplus/gallery2/VideoPlayerActivity;->access$900(Lcom/oneplus/gallery2/VideoPlayerActivity;)V

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$5;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery2/VideoPlayerActivity;->hideControlsUIDelay()V
    invoke-static {v0}, Lcom/oneplus/gallery2/VideoPlayerActivity;->access$1000(Lcom/oneplus/gallery2/VideoPlayerActivity;)V

    goto :goto_0
.end method
