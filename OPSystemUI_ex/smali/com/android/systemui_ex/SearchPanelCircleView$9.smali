.class Lcom/android/systemui_ex/SearchPanelCircleView$9;
.super Ljava/lang/Object;
.source "SearchPanelCircleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/SearchPanelCircleView;->setDraggedFarEnough(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/SearchPanelCircleView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/SearchPanelCircleView;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/systemui_ex/SearchPanelCircleView$9;->this$0:Lcom/android/systemui_ex/SearchPanelCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/systemui_ex/SearchPanelCircleView$9;->this$0:Lcom/android/systemui_ex/SearchPanelCircleView;

    # invokes: Lcom/android/systemui_ex/SearchPanelCircleView;->addRipple()V
    invoke-static {v0}, Lcom/android/systemui_ex/SearchPanelCircleView;->access$1000(Lcom/android/systemui_ex/SearchPanelCircleView;)V

    .line 453
    return-void
.end method
