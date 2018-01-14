.class public Landroid/app/Notification$Action;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$Action$1;,
        Landroid/app/Notification$Action$Builder;,
        Landroid/app/Notification$Action$Extender;,
        Landroid/app/Notification$Action$WearableExtender;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mAllowGeneratedReplies:Z

.field private final mExtras:Landroid/os/Bundle;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private final mRemoteInputs:[Landroid/app/RemoteInput;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Landroid/app/Notification$Action;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1288
    new-instance v0, Landroid/app/Notification$Action$1;

    invoke-direct {v0}, Landroid/app/Notification$Action$1;-><init>()V

    .line 1287
    sput-object v0, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1026
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1072
    const-string/jumbo v0, ""

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;Z)V

    .line 1071
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;Z)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/app/RemoteInput;
    .param p6, "allowGeneratedReplies"    # Z

    .prologue
    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 1078
    iput-object p1, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1079
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1080
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Action;->icon:I

    .line 1082
    :cond_0
    iput-object p2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 1083
    iput-object p3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 1084
    if-eqz p4, :cond_1

    .end local p4    # "extras":Landroid/os/Bundle;
    :goto_0
    iput-object p4, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    .line 1085
    iput-object p5, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 1086
    iput-boolean p6, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 1077
    return-void

    .line 1084
    .restart local p4    # "extras":Landroid/os/Bundle;
    :cond_1
    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "extras":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZLandroid/app/Notification$Action;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/app/RemoteInput;
    .param p6, "allowGeneratedReplies"    # Z

    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    iput-boolean v2, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 1052
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1054
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1055
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Action;->icon:I

    .line 1058
    :cond_0
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 1059
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1060
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 1062
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    .line 1063
    sget-object v0, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/RemoteInput;

    iput-object v0, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 1064
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 1051
    return-void

    :cond_2
    move v0, v2

    .line 1064
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/Notification$Action;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Action;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public clone()Landroid/app/Notification$Action;
    .locals 7

    .prologue
    .line 1255
    new-instance v0, Landroid/app/Notification$Action;

    .line 1256
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 1257
    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 1258
    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 1259
    iget-object v4, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    if-nez v4, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1260
    :goto_0
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    .line 1261
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v6

    .line 1255
    invoke-direct/range {v0 .. v6}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;Z)V

    return-object v0

    .line 1259
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    iget-object v5, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1254
    invoke-virtual {p0}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1265
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowGeneratedReplies()Z
    .locals 1

    .prologue
    .line 1112
    iget-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/Notification$Action;->icon:I

    if-eqz v0, :cond_0

    .line 1095
    const-string/jumbo v0, ""

    iget v1, p0, Landroid/app/Notification$Action;->icon:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1097
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getRemoteInputs()[Landroid/app/RemoteInput;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1269
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 1270
    .local v0, "ic":Landroid/graphics/drawable/Icon;
    if-eqz v0, :cond_0

    .line 1271
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1276
    :goto_0
    iget-object v3, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1277
    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_1

    .line 1278
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1279
    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1283
    :goto_1
    iget-object v3, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1284
    iget-object v3, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1285
    iget-boolean v3, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1268
    return-void

    .line 1274
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1281
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1285
    goto :goto_2
.end method
