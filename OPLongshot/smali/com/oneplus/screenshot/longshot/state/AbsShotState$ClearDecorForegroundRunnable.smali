.class Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;
.super Ljava/lang/Object;
.source "AbsShotState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/AbsShotState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearDecorForegroundRunnable"
.end annotation


# instance fields
.field private mDecor:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/AbsShotState;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/AbsShotState;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p2, "decor"    # Landroid/widget/FrameLayout;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;->mDecor:Landroid/widget/FrameLayout;

    .line 156
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;->mDecor:Landroid/widget/FrameLayout;

    .line 157
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;->this$0:Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->clearDecorForeground(Landroid/widget/FrameLayout;)V

    .line 162
    return-void
.end method
