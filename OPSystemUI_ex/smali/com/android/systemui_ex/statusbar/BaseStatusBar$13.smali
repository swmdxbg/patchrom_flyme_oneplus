.class Lcom/android/systemui_ex/statusbar/BaseStatusBar$13;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/BaseStatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;ZZLandroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iput-boolean p2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$13;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$13;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$13;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1776
    new-instance v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$13$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$13$1;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar$13;)V

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$13$1;->start()V

    .line 1810
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 1812
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 1814
    return v2
.end method
