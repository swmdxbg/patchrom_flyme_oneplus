.class Lcom/android/settings_ex/applications/AppLaunchSettings$1;
.super Ljava/lang/Object;
.source "AppLaunchSettings.java"

# interfaces
.implements Lcom/android/settings_ex/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/AppLaunchSettings;->buildStateDropDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/AppLaunchSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/AppLaunchSettings;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings_ex/applications/AppLaunchSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings_ex/applications/AppLaunchSettings;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/settings_ex/applications/AppLaunchSettings;->updateAppLinkState(I)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/AppLaunchSettings;->access$000(Lcom/android/settings_ex/applications/AppLaunchSettings;I)Z

    move-result v0

    return v0
.end method
