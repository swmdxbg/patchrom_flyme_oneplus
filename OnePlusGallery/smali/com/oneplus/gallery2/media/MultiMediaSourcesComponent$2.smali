.class Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$2;
.super Ljava/lang/Object;
.source "MultiMediaSourcesComponent.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;
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
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$2;->this$0:Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;

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
    .line 60
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {p1, p2, p0}, Lcom/oneplus/base/PropertySource;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 63
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$2;->this$0:Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;

    check-cast p1, Lcom/oneplus/gallery2/media/MediaSource;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->onMediaTableReady(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 65
    :cond_0
    return-void
.end method
