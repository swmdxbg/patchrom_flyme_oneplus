.class Lcom/android/keyguard/PasswordTextView$CharState;
.super Ljava/lang/Object;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharState"
.end annotation


# instance fields
.field currentDotSizeFactor:F

.field currentTextSizeFactor:F

.field currentTextTranslationY:F

.field currentWidthFactor:F

.field dotAnimationIsGrowing:Z

.field dotAnimator:Landroid/animation/Animator;

.field dotFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotSwapperRunnable:Ljava/lang/Runnable;

.field isDotSwapPending:Z

.field removeEndListener:Landroid/animation/Animator$AnimatorListener;

.field textAnimationIsGrowing:Z

.field textAnimator:Landroid/animation/ValueAnimator;

.field textFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field textTranslateAnimator:Landroid/animation/ValueAnimator;

.field textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final synthetic this$0:Lcom/android/keyguard/PasswordTextView;

.field whichChar:C

.field widthAnimationIsGrowing:Z

.field widthAnimator:Landroid/animation/ValueAnimator;

.field widthFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/PasswordTextView;)V
    .locals 1

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    .line 359
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$1;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 383
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$2;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 390
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$3;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 397
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$4;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 404
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$5;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 411
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$6;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 420
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$7;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 429
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$8;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 438
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$9;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 447
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$10;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/PasswordTextView;Lcom/android/keyguard/PasswordTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/PasswordTextView;
    .param p2, "x1"    # Lcom/android/keyguard/PasswordTextView$1;

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView$CharState;-><init>(Lcom/android/keyguard/PasswordTextView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/PasswordTextView$CharState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView$CharState;

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/PasswordTextView$CharState;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView$CharState;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/PasswordTextView$CharState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView$CharState;

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->performSwap()V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 643
    if-eqz p1, :cond_0

    .line 644
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 646
    :cond_0
    return-void
.end method

.method private performSwap()V
    .locals 2

    .prologue
    .line 535
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextDisappearAnimation(J)V

    .line 536
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotAppearAnimation(J)V

    .line 538
    return-void
.end method

.method private postDotSwap(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    .line 514
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/keyguard/PasswordTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 516
    return-void
.end method

.method private removeDotSwapCallbacks()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 521
    return-void
.end method

.method private startDotAppearAnimation(J)V
    .locals 13
    .param p1, "delay"    # J

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 610
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v6}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 611
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z
    invoke-static {v6}, Lcom/android/keyguard/PasswordTextView;->access$600(Lcom/android/keyguard/PasswordTextView;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 613
    new-array v6, v9, [F

    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    aput v7, v6, v10

    const/high16 v7, 0x3fc00000    # 1.5f

    aput v7, v6, v8

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 615
    .local v2, "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 616
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v6}, Lcom/android/keyguard/PasswordTextView;->access$800(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 617
    const-wide/16 v4, 0xa0

    .line 619
    .local v4, "overShootDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 620
    new-array v6, v9, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 622
    .local v3, "settleBackAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 623
    const-wide/16 v6, 0x140

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 624
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 625
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 626
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v6, v9, [Landroid/animation/Animator;

    aput-object v2, v6, v10

    aput-object v3, v6, v8

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 627
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 628
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 629
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 639
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "overShootAnimator":Landroid/animation/ValueAnimator;
    .end local v3    # "settleBackAnimator":Landroid/animation/ValueAnimator;
    .end local v4    # "overShootDuration":J
    :goto_0
    iput-boolean v8, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 640
    return-void

    .line 631
    :cond_0
    new-array v6, v9, [F

    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    aput v7, v6, v10

    aput v11, v6, v8

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 632
    .local v1, "growAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 633
    const/high16 v6, 0x43200000    # 160.0f

    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    sub-float v7, v11, v7

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 634
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 635
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 636
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 637
    iput-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    goto :goto_0

    .line 620
    nop

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startDotDisappearAnimation(J)V
    .locals 7
    .param p1, "startDelay"    # J

    .prologue
    const/4 v6, 0x0

    .line 565
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 566
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    aput v4, v1, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 567
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 568
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 569
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->access$700(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 570
    const/high16 v1, 0x43200000    # 160.0f

    iget v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 571
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 572
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 573
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 574
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 575
    iput-boolean v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 576
    return-void
.end method

.method private startTextAppearAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 589
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 590
    new-array v0, v5, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    aput v2, v0, v1

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 591
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 592
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 593
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->access$800(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 594
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43200000    # 160.0f

    iget v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 595
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 596
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 599
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 600
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 601
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 602
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 603
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->access$800(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 604
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 605
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 607
    :cond_0
    return-void

    .line 600
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startTextDisappearAnimation(J)V
    .locals 5
    .param p1, "startDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 553
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 554
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    aput v1, v0, v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 555
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 556
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 557
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->access$700(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 558
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43200000    # 160.0f

    iget v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 559
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 560
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 561
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 562
    return-void
.end method

.method private startWidthAppearAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 579
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 580
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    aput v2, v0, v1

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 581
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 582
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 583
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43200000    # 160.0f

    iget v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 584
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 585
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .line 586
    return-void
.end method

.method private startWidthDisappearAnimation(J)V
    .locals 5
    .param p1, "widthDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 541
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 542
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    aput v1, v0, v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 543
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 544
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 545
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 546
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43200000    # 160.0f

    iget v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 547
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 548
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 549
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .line 550
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FIFF)F
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentDrawPosition"    # F
    .param p3, "charHeight"    # I
    .param p4, "yPosition"    # F
    .param p5, "charLength"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 655
    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    move v4, v5

    .line 656
    .local v4, "textVisible":Z
    :goto_0
    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    move v3, v5

    .line 657
    .local v3, "dotVisible":Z
    :goto_1
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float v1, p5, v5

    .line 658
    .local v1, "charWidth":F
    if-eqz v4, :cond_0

    .line 659
    int-to-float v5, p3

    div-float/2addr v5, v9

    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v5, p4

    int-to-float v6, p3

    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    mul-float/2addr v6, v7

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    add-float v2, v5, v6

    .line 661
    .local v2, "currYPosition":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 662
    div-float v5, v1, v9

    add-float v0, p2, v5

    .line 663
    .local v0, "centerX":F
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 664
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 665
    iget-char v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;
    invoke-static {v6}, Lcom/android/keyguard/PasswordTextView;->access$900(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v5, v8, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 666
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 668
    .end local v0    # "centerX":F
    .end local v2    # "currYPosition":F
    :cond_0
    if-eqz v3, :cond_1

    .line 669
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 670
    div-float v5, v1, v9

    add-float v0, p2, v5

    .line 671
    .restart local v0    # "centerX":F
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 672
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mDotSize:I
    invoke-static {v5}, Lcom/android/keyguard/PasswordTextView;->access$1000(Lcom/android/keyguard/PasswordTextView;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;
    invoke-static {v6}, Lcom/android/keyguard/PasswordTextView;->access$900(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v8, v8, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 673
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 675
    .end local v0    # "centerX":F
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mCharPadding:I
    invoke-static {v5}, Lcom/android/keyguard/PasswordTextView;->access$1100(Lcom/android/keyguard/PasswordTextView;)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    return v5

    .end local v1    # "charWidth":F
    .end local v3    # "dotVisible":Z
    .end local v4    # "textVisible":Z
    :cond_2
    move v4, v6

    .line 655
    goto :goto_0

    .restart local v4    # "textVisible":Z
    :cond_3
    move v3, v6

    .line 656
    goto :goto_1
.end method

.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 456
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 457
    iput v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 458
    iput v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 459
    iput v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 460
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 461
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 462
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 463
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 464
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 465
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 466
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    .line 467
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    .line 468
    return-void
.end method

.method startAppearAnimation()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 489
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z
    invoke-static {v5}, Lcom/android/keyguard/PasswordTextView;->access$600(Lcom/android/keyguard/PasswordTextView;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    if-nez v5, :cond_7

    :cond_0
    move v0, v3

    .line 491
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z
    invoke-static {v5}, Lcom/android/keyguard/PasswordTextView;->access$600(Lcom/android/keyguard/PasswordTextView;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    if-nez v5, :cond_8

    :cond_1
    move v1, v3

    .line 493
    .local v1, "textNeedsAnimation":Z
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    if-nez v5, :cond_9

    :cond_2
    move v2, v3

    .line 494
    .local v2, "widthNeedsAnimation":Z
    :goto_2
    if-eqz v0, :cond_3

    .line 495
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotAppearAnimation(J)V

    .line 497
    :cond_3
    if-eqz v1, :cond_4

    .line 498
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextAppearAnimation()V

    .line 500
    :cond_4
    if-eqz v2, :cond_5

    .line 501
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->startWidthAppearAnimation()V

    .line 503
    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z
    invoke-static {v3}, Lcom/android/keyguard/PasswordTextView;->access$600(Lcom/android/keyguard/PasswordTextView;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 504
    const-wide/16 v4, 0x514

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/PasswordTextView$CharState;->postDotSwap(J)V

    .line 506
    :cond_6
    return-void

    .end local v0    # "dotNeedsAnimation":Z
    .end local v1    # "textNeedsAnimation":Z
    .end local v2    # "widthNeedsAnimation":Z
    :cond_7
    move v0, v4

    .line 489
    goto :goto_0

    .restart local v0    # "dotNeedsAnimation":Z
    :cond_8
    move v1, v4

    .line 491
    goto :goto_1

    .restart local v1    # "textNeedsAnimation":Z
    :cond_9
    move v2, v4

    .line 493
    goto :goto_2
.end method

.method startRemoveAnimation(JJ)V
    .locals 7
    .param p1, "startDelay"    # J
    .param p3, "widthDelay"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 471
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    if-eqz v5, :cond_9

    :cond_1
    move v0, v4

    .line 473
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    if-eqz v5, :cond_a

    :cond_3
    move v1, v4

    .line 475
    .local v1, "textNeedsAnimation":Z
    :goto_1
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    if-eqz v5, :cond_b

    :cond_5
    move v2, v4

    .line 477
    .local v2, "widthNeedsAnimation":Z
    :goto_2
    if-eqz v0, :cond_6

    .line 478
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotDisappearAnimation(J)V

    .line 480
    :cond_6
    if-eqz v1, :cond_7

    .line 481
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextDisappearAnimation(J)V

    .line 483
    :cond_7
    if-eqz v2, :cond_8

    .line 484
    invoke-direct {p0, p3, p4}, Lcom/android/keyguard/PasswordTextView$CharState;->startWidthDisappearAnimation(J)V

    .line 486
    :cond_8
    return-void

    .end local v0    # "dotNeedsAnimation":Z
    .end local v1    # "textNeedsAnimation":Z
    .end local v2    # "widthNeedsAnimation":Z
    :cond_9
    move v0, v3

    .line 471
    goto :goto_0

    .restart local v0    # "dotNeedsAnimation":Z
    :cond_a
    move v1, v3

    .line 473
    goto :goto_1

    .restart local v1    # "textNeedsAnimation":Z
    :cond_b
    move v2, v3

    .line 475
    goto :goto_2
.end method

.method swapToDotWhenAppearFinished()V
    .locals 6

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    .line 525
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 528
    .local v0, "remainingDuration":J
    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/PasswordTextView$CharState;->postDotSwap(J)V

    .line 532
    .end local v0    # "remainingDuration":J
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->performSwap()V

    goto :goto_0
.end method
