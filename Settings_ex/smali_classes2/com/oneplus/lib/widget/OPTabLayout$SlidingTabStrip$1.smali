.class Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;
.super Ljava/lang/Object;
.source "OPTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;IIII)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;
    .param p2, "val$startLeft"    # I
    .param p3, "val$targetLeft"    # I
    .param p4, "val$startRight"    # I
    .param p5, "val$targetRight"    # I

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->this$1:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$startLeft:I

    iput p3, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$targetLeft:I

    iput p4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$startRight:I

    iput p5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$targetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1445
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 1446
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->this$1:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    .line 1447
    iget v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$startLeft:I

    iget v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$targetLeft:I

    invoke-static {v2, v3, v0}, Lcom/oneplus/lib/widget/OPAnimationUtils;->lerp(IIF)I

    move-result v2

    .line 1448
    iget v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$startRight:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;->val$targetRight:I

    invoke-static {v3, v4, v0}, Lcom/oneplus/lib/widget/OPAnimationUtils;->lerp(IIF)I

    move-result v3

    .line 1446
    invoke-static {v1, v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->-wrap0(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;II)V

    .line 1444
    return-void
.end method
