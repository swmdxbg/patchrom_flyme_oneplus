.class Lcom/oneplus/gallery2/editor/PhotoEditor$2;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/PhotoEditor;
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
        "Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/PhotoEditor;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$2;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;>;"
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$2;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    check-cast p1, Lcom/oneplus/gallery2/editor/PhotoEditorObject;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    # invokes: Lcom/oneplus/gallery2/editor/PhotoEditor;->onBoundObjectStateChanged(Lcom/oneplus/gallery2/editor/PhotoEditorObject;Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;)V
    invoke-static {v2, p1, v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$100(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/editor/PhotoEditorObject;Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;)V

    .line 230
    return-void
.end method
