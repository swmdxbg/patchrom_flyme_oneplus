.class Lcom/android/systemui_ex/net/NetworkOverLimitActivity$2;
.super Ljava/lang/Object;
.source "NetworkOverLimitActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/net/NetworkOverLimitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/net/NetworkOverLimitActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/net/NetworkOverLimitActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/systemui_ex/net/NetworkOverLimitActivity$2;->this$0:Lcom/android/systemui_ex/net/NetworkOverLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui_ex/net/NetworkOverLimitActivity$2;->this$0:Lcom/android/systemui_ex/net/NetworkOverLimitActivity;

    invoke-virtual {v0}, Lcom/android/systemui_ex/net/NetworkOverLimitActivity;->finish()V

    .line 70
    return-void
.end method
