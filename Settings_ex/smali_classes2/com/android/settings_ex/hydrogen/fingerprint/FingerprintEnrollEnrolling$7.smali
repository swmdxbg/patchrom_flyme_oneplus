.class Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$7;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->clearError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$7;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$7;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->-get0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;)Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->getWarningTipsView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    return-void
.end method
