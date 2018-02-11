.class public Landroid/support/v7/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final INSETS_NONE:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "DrawableUtils"

.field private static final VECTOR_DRAWABLE_CLAZZ_NAME:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static sInsetsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 54
    :try_start_0
    const-string/jumbo v1, "android.graphics.Insets"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    return-void

    .line 55
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x0

    .line 128
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v5, :cond_0

    instance-of v3, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v3, :cond_0

    .line 129
    return v4

    .line 130
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v5, :cond_1

    instance-of v3, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_1

    .line 133
    return v4

    .line 134
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v3, v5, :cond_2

    instance-of v3, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_2

    .line 135
    return v4

    .line 138
    :cond_2
    instance-of v3, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v3, :cond_4

    .line 140
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 141
    .local v2, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    instance-of v3, v2, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v3, :cond_7

    move-object v1, v2

    .line 143
    check-cast v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 144
    .local v1, "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_7

    aget-object v0, v5, v3

    .line 145
    .local v0, "child":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 146
    return v4

    .line 144
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "child":Landroid/graphics/drawable/Drawable;
    .end local v1    # "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .end local v2    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_4
    instance-of v3, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v3, :cond_5

    .line 152
    check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 151
    invoke-static {v3}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    return v3

    .line 154
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    instance-of v3, p0, Landroid/support/v7/graphics/drawable/DrawableWrapper;

    if-eqz v3, :cond_6

    .line 156
    check-cast p0, Landroid/support/v7/graphics/drawable/DrawableWrapper;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 155
    invoke-static {v3}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    return v3

    .line 158
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    instance-of v3, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v3, :cond_7

    .line 159
    check-cast p0, Landroid/graphics/drawable/ScaleDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    return v3

    .line 162
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 v3, 0x1

    return v3
.end method

.method static fixDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 118
    const-string/jumbo v0, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0}, Landroid/support/v7/widget/DrawableUtils;->fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_0
    return-void
.end method

.method private static fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 171
    .local v0, "originalState":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 173
    :cond_0
    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 179
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 169
    return-void

    .line 176
    :cond_1
    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public static getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 10
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 68
    sget-object v6, Landroid/support/v7/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    if-eqz v6, :cond_2

    .line 72
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 75
    const-string/jumbo v7, "getOpticalInsets"

    .line 74
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 76
    .local v2, "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 78
    .local v3, "insets":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 80
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 82
    .local v4, "result":Landroid/graphics/Rect;
    sget-object v6, Landroid/support/v7/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_5

    aget-object v1, v6, v5

    .line 83
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "left"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 82
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const-string/jumbo v9, "top"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 100
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    .end local v3    # "insets":Ljava/lang/Object;
    .end local v4    # "result":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "DrawableUtils"

    const-string/jumbo v6, "Couldn\'t obtain the optical insets. Ignoring."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v5, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    return-object v5

    .line 83
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "insets":Ljava/lang/Object;
    .restart local v4    # "result":Landroid/graphics/Rect;
    :cond_3
    :try_start_1
    const-string/jumbo v9, "right"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 83
    :cond_4
    const-string/jumbo v9, "bottom"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 98
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_5
    return-object v4
.end method

.method static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 183
    packed-switch p0, :pswitch_data_0

    .line 192
    :pswitch_0
    return-object p1

    .line 184
    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 185
    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 186
    :pswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 187
    :pswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 188
    :pswitch_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 189
    :pswitch_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 190
    const-string/jumbo v0, "ADD"

    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 189
    .end local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :cond_0
    return-object p1

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
