.class Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$1;
.super Ljava/lang/Object;
.source "BatterySaverSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$1;->this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$1;->this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-static {v0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->-wrap2(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)V

    .line 171
    return-void
.end method
