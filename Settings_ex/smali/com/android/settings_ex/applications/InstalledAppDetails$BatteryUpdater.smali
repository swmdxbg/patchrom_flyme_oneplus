.class Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Lcom/android/settings_ex/applications/InstalledAppDetails$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p2, "x1"    # Lcom/android/settings_ex/applications/InstalledAppDetails$1;

    .prologue
    .line 955
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 955
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 958
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    # getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;
    invoke-static {v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$500(Lcom/android/settings_ex/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v6

    move-object v4, v5

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 959
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    # getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;
    invoke-static {v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$500(Lcom/android/settings_ex/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    iget-object v7, v7, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    .line 961
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    # getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;
    invoke-static {v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$500(Lcom/android/settings_ex/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v3

    .line 962
    .local v3, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 963
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 964
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 965
    .local v2, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v4

    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    iget-object v6, v6, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v6, :cond_1

    .line 966
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    # setter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;
    invoke-static {v4, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$602(Lcom/android/settings_ex/applications/InstalledAppDetails;Lcom/android/internal/os/BatterySipper;)Lcom/android/internal/os/BatterySipper;

    .line 970
    .end local v2    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_0
    return-object v5

    .line 963
    .restart local v2    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 955
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 979
    :goto_0
    return-void

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshUi()Z

    goto :goto_0
.end method
