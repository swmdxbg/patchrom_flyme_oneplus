.class final Lcom/android/settings_ex/applications/ProcStatsData$1;
.super Ljava/lang/Object;
.source "ProcStatsData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ProcStatsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings_ex/applications/ProcStatsEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings_ex/applications/ProcStatsEntry;Lcom/android/settings_ex/applications/ProcStatsEntry;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/settings_ex/applications/ProcStatsEntry;
    .param p2, "rhs"    # Lcom/android/settings_ex/applications/ProcStatsEntry;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 456
    iget-wide v0, p1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunWeight:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 457
    return v5

    .line 458
    :cond_0
    iget-wide v0, p1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunWeight:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 459
    return v4

    .line 460
    :cond_1
    iget-wide v0, p1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v2, p2, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 461
    return v5

    .line 462
    :cond_2
    iget-wide v0, p1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v2, p2, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 463
    return v4

    .line 465
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 455
    check-cast p1, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/applications/ProcStatsData$1;->compare(Lcom/android/settings_ex/applications/ProcStatsEntry;Lcom/android/settings_ex/applications/ProcStatsEntry;)I

    move-result v0

    return v0
.end method
