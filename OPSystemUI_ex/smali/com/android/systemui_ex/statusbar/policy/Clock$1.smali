.class Lcom/android/systemui_ex/statusbar/policy/Clock$1;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/policy/Clock;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    const-string v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "tz":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/Clock;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    # setter for: Lcom/android/systemui_ex/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/Clock;->access$002(Lcom/android/systemui_ex/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 138
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/Clock;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/policy/Clock;->access$100(Lcom/android/systemui_ex/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/Clock;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/policy/Clock;->access$100(Lcom/android/systemui_ex/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/Clock;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/policy/Clock;->access$000(Lcom/android/systemui_ex/statusbar/policy/Clock;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 148
    .end local v2    # "tz":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/Clock;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/Clock;->updateClock()V

    .line 149
    return-void

    .line 141
    :cond_1
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/Clock;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/Clock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 143
    .local v1, "newLocale":Ljava/util/Locale;
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/Clock;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/policy/Clock;->access$200(Lcom/android/systemui_ex/statusbar/policy/Clock;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/Clock;

    # setter for: Lcom/android/systemui_ex/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;
    invoke-static {v3, v1}, Lcom/android/systemui_ex/statusbar/policy/Clock;->access$202(Lcom/android/systemui_ex/statusbar/policy/Clock;Ljava/util/Locale;)Ljava/util/Locale;

    .line 145
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/Clock;

    const-string v4, ""

    # setter for: Lcom/android/systemui_ex/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/Clock;->access$302(Lcom/android/systemui_ex/statusbar/policy/Clock;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
