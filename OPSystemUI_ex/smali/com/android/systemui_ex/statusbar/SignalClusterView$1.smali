.class Lcom/android/systemui_ex/statusbar/SignalClusterView$1;
.super Ljava/lang/Object;
.source "SignalClusterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/SignalClusterView;->onStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/SignalClusterView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/SignalClusterView;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui_ex/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui_ex/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui_ex/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mSC:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui_ex/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v1

    # setter for: Lcom/android/systemui_ex/statusbar/SignalClusterView;->mVpnVisible:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->access$002(Lcom/android/systemui_ex/statusbar/SignalClusterView;Z)Z

    .line 200
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui_ex/statusbar/SignalClusterView;

    # invokes: Lcom/android/systemui_ex/statusbar/SignalClusterView;->apply()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->access$100(Lcom/android/systemui_ex/statusbar/SignalClusterView;)V

    .line 201
    return-void
.end method
