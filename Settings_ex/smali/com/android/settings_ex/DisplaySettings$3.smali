.class Lcom/android/settings_ex/DisplaySettings$3;
.super Landroid/os/Handler;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$3;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 735
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 736
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$3;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$700(Lcom/android/settings_ex/DisplaySettings;)Lcom/oneplus/settings/OneplusColorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$3;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$700(Lcom/android/settings_ex/DisplaySettings;)Lcom/oneplus/settings/OneplusColorManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setNightModeLevel(I)V

    .line 739
    :cond_0
    return-void
.end method
