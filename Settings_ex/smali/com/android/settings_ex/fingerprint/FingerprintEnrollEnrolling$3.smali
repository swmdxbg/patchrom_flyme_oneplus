.class Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$3;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->access$100(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    .line 347
    :cond_0
    return-void
.end method
