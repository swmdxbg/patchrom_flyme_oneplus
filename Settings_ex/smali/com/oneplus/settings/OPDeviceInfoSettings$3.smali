.class Lcom/oneplus/settings/OPDeviceInfoSettings$3;
.super Ljava/lang/Object;
.source "OPDeviceInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPDeviceInfoSettings;->CreateDeviceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPDeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPDeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/oneplus/settings/OPDeviceInfoSettings$3;->this$0:Lcom/oneplus/settings/OPDeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/oneplus/settings/OPDeviceInfoSettings$3;->this$0:Lcom/oneplus/settings/OPDeviceInfoSettings;

    # getter for: Lcom/oneplus/settings/OPDeviceInfoSettings;->mUpdateDeviceNameDialog:Lcom/oneplus/app/OPAlertDialog;
    invoke-static {v0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->access$300(Lcom/oneplus/settings/OPDeviceInfoSettings;)Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog;->cancel()V

    .line 1053
    return-void
.end method
