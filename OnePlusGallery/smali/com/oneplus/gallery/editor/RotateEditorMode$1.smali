.class Lcom/oneplus/gallery/editor/RotateEditorMode$1;
.super Ljava/lang/Object;
.source "RotateEditorMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/editor/RotateEditorMode;->onCreateUI(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/RotateEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/RotateEditorMode;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oneplus/gallery/editor/RotateEditorMode$1;->this$0:Lcom/oneplus/gallery/editor/RotateEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/gallery/editor/RotateEditorMode$1;->this$0:Lcom/oneplus/gallery/editor/RotateEditorMode;

    const/4 v1, 0x0

    # invokes: Lcom/oneplus/gallery/editor/RotateEditorMode;->rotate(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/editor/RotateEditorMode;->access$000(Lcom/oneplus/gallery/editor/RotateEditorMode;Z)V

    .line 70
    return-void
.end method
