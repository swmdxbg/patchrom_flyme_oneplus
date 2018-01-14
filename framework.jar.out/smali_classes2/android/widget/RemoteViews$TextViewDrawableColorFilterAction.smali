.class Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewDrawableColorFilterAction"
.end annotation


# static fields
.field public static final TAG:I = 0x11


# instance fields
.field final color:I

.field final index:I

.field final isRelative:Z

.field final mode:Landroid/graphics/PorterDuff$Mode;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "index"    # I
    .param p5, "color"    # I
    .param p6, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1999
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 2001
    iput p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 2002
    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    .line 2003
    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    .line 2004
    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    .line 2005
    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 2000
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 2008
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 2009
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 2010
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    .line 2011
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    .line 2012
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    .line 2013
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->readPorterDuffMode(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 2008
    return-void
.end method

.method private readPorterDuffMode(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2017
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2018
    .local v0, "mode":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2019
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1

    .line 2021
    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object v1
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 2036
    iget v3, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2037
    .local v2, "target":Landroid/widget/TextView;
    if-nez v2, :cond_0

    return-void

    .line 2038
    :cond_0
    iget-boolean v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    if-eqz v3, :cond_2

    .line 2039
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2041
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    :goto_0
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    if-ltz v3, :cond_1

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_3

    .line 2042
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "index must be in range [0, 3]."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2040
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 2044
    :cond_3
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    aget-object v0, v1, v3

    .line 2045
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 2046
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2047
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2035
    :cond_4
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2052
    const-string/jumbo v0, "TextViewDrawableColorFilterAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2026
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2027
    iget v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2028
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2029
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2030
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2031
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2025
    return-void

    .line 2028
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
