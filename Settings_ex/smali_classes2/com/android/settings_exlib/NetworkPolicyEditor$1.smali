.class Lcom/android/settings_exlib/NetworkPolicyEditor$1;
.super Landroid/os/AsyncTask;
.source "NetworkPolicyEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_exlib/NetworkPolicyEditor;->writeAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/settings_exlib/NetworkPolicyEditor;

.field final synthetic val$policies:[Landroid/net/NetworkPolicy;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/NetworkPolicyEditor;
    .param p2, "val$policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_exlib/NetworkPolicyEditor$1;->this$0:Lcom/android/settings_exlib/NetworkPolicyEditor;

    iput-object p2, p0, Lcom/android/settings_exlib/NetworkPolicyEditor$1;->val$policies:[Landroid/net/NetworkPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/NetworkPolicyEditor$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_exlib/NetworkPolicyEditor$1;->this$0:Lcom/android/settings_exlib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_exlib/NetworkPolicyEditor$1;->val$policies:[Landroid/net/NetworkPolicy;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/NetworkPolicyEditor;->write([Landroid/net/NetworkPolicy;)V

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method
