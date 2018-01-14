.class public abstract Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.super Landroid/os/Binder;
.source "IPhoneStateListener.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneStateListener"

.field static final TRANSACTION_onCallForwardingIndicatorChanged:I = 0x4

.field static final TRANSACTION_onCallStateChanged:I = 0x6

.field static final TRANSACTION_onCarrierNetworkChange:I = 0x11

.field static final TRANSACTION_onCellInfoChanged:I = 0xb

.field static final TRANSACTION_onCellLocationChanged:I = 0x5

.field static final TRANSACTION_onDataActivity:I = 0x8

.field static final TRANSACTION_onDataConnectionRealTimeInfoChanged:I = 0xe

.field static final TRANSACTION_onDataConnectionStateChanged:I = 0x7

.field static final TRANSACTION_onImsCapabilityStatusChange:I = 0x12

.field static final TRANSACTION_onMessageWaitingIndicatorChanged:I = 0x3

.field static final TRANSACTION_onOemHookRawEvent:I = 0x10

.field static final TRANSACTION_onOtaspChanged:I = 0xa

.field static final TRANSACTION_onPreciseCallStateChanged:I = 0xc

.field static final TRANSACTION_onPreciseDataConnectionStateChanged:I = 0xd

.field static final TRANSACTION_onServiceStateChanged:I = 0x1

.field static final TRANSACTION_onSignalStrengthChanged:I = 0x2

.field static final TRANSACTION_onSignalStrengthsChanged:I = 0x9

.field static final TRANSACTION_onVoLteServiceStateChanged:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.IPhoneStateListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/telephony/IPhoneStateListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 229
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    .line 42
    :sswitch_0
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v15, 0x1

    return v15

    .line 47
    :sswitch_1
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_0

    .line 50
    sget-object v15, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ServiceState;

    .line 55
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 56
    const/4 v15, 0x1

    return v15

    .line 53
    :cond_0
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/telephony/ServiceState;
    goto :goto_0

    .line 60
    .end local v6    # "_arg0":Landroid/telephony/ServiceState;
    :sswitch_2
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .local v1, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthChanged(I)V

    .line 64
    const/4 v15, 0x1

    return v15

    .line 68
    .end local v1    # "_arg0":I
    :sswitch_3
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_1

    const/4 v10, 0x1

    .line 71
    .local v10, "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMessageWaitingIndicatorChanged(Z)V

    .line 72
    const/4 v15, 0x1

    return v15

    .line 70
    .end local v10    # "_arg0":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 76
    :sswitch_4
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_2

    const/4 v10, 0x1

    .line 79
    .restart local v10    # "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallForwardingIndicatorChanged(Z)V

    .line 80
    const/4 v15, 0x1

    return v15

    .line 78
    .end local v10    # "_arg0":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 84
    :sswitch_5
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_3

    .line 87
    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 92
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellLocationChanged(Landroid/os/Bundle;)V

    .line 93
    const/4 v15, 0x1

    return v15

    .line 90
    :cond_3
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 97
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 102
    .local v14, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallStateChanged(ILjava/lang/String;)V

    .line 103
    const/4 v15, 0x1

    return v15

    .line 107
    .end local v1    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 112
    .local v13, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionStateChanged(II)V

    .line 113
    const/4 v15, 0x1

    return v15

    .line 117
    .end local v1    # "_arg0":I
    .end local v13    # "_arg1":I
    :sswitch_8
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivity(I)V

    .line 121
    const/4 v15, 0x1

    return v15

    .line 125
    .end local v1    # "_arg0":I
    :sswitch_9
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_4

    .line 128
    sget-object v15, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SignalStrength;

    .line 133
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 134
    const/4 v15, 0x1

    return v15

    .line 131
    :cond_4
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_4

    .line 138
    .end local v7    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_a
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOtaspChanged(I)V

    .line 142
    const/4 v15, 0x1

    return v15

    .line 146
    .end local v1    # "_arg0":I
    :sswitch_b
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    sget-object v15, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    .line 149
    .local v9, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellInfoChanged(Ljava/util/List;)V

    .line 150
    const/4 v15, 0x1

    return v15

    .line 154
    .end local v9    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_c
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_5

    .line 157
    sget-object v15, Landroid/telephony/PreciseCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/PreciseCallState;

    .line 162
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    .line 163
    const/4 v15, 0x1

    return v15

    .line 160
    :cond_5
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/telephony/PreciseCallState;
    goto :goto_5

    .line 167
    .end local v4    # "_arg0":Landroid/telephony/PreciseCallState;
    :sswitch_d
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_6

    .line 170
    sget-object v15, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PreciseDataConnectionState;

    .line 175
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    .line 176
    const/4 v15, 0x1

    return v15

    .line 173
    :cond_6
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/telephony/PreciseDataConnectionState;
    goto :goto_6

    .line 180
    .end local v5    # "_arg0":Landroid/telephony/PreciseDataConnectionState;
    :sswitch_e
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_7

    .line 183
    sget-object v15, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/DataConnectionRealTimeInfo;

    .line 188
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 189
    const/4 v15, 0x1

    return v15

    .line 186
    :cond_7
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    goto :goto_7

    .line 193
    .end local v3    # "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    :sswitch_f
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_8

    .line 196
    sget-object v15, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/VoLteServiceState;

    .line 201
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    .line 202
    const/4 v15, 0x1

    return v15

    .line 199
    :cond_8
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/telephony/VoLteServiceState;
    goto :goto_8

    .line 206
    .end local v8    # "_arg0":Landroid/telephony/VoLteServiceState;
    :sswitch_10
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 209
    .local v11, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOemHookRawEvent([B)V

    .line 210
    const/4 v15, 0x1

    return v15

    .line 214
    .end local v11    # "_arg0":[B
    :sswitch_11
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_9

    const/4 v10, 0x1

    .line 217
    .restart local v10    # "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierNetworkChange(Z)V

    .line 218
    const/4 v15, 0x1

    return v15

    .line 216
    .end local v10    # "_arg0":Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_9

    .line 222
    :sswitch_12
    const-string/jumbo v15, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v12

    .line 225
    .local v12, "_arg0":[Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onImsCapabilityStatusChange([Z)V

    .line 226
    const/4 v15, 0x1

    return v15

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
