.class Lcom/android/settings_ex/widget/DotsPageIndicator$2;
.super Landroid/database/DataSetObserver;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/widget/DotsPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/DotsPageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/widget/DotsPageIndicator;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$2;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$2;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    iget-object v1, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$2;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    invoke-static {v1}, Lcom/android/settings_ex/widget/DotsPageIndicator;->-get9(Lcom/android/settings_ex/widget/DotsPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/widget/DotsPageIndicator;->-wrap4(Lcom/android/settings_ex/widget/DotsPageIndicator;I)V

    .line 182
    return-void
.end method
