.class Lcom/oneplus/screenshot/longshot/state/AbsMoveState$1;
.super Ljava/lang/Object;
.source "AbsMoveState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/AbsMoveState;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/state/AbsMoveState;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsMoveState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsMoveState;

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->hide()V

    .line 49
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsMoveState;

    # invokes: Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->excuteMove()V
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->access$000(Lcom/oneplus/screenshot/longshot/state/AbsMoveState;)V

    .line 50
    return-void
.end method
