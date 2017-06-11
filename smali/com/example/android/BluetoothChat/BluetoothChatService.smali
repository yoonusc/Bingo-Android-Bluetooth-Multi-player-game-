.class public Lcom/example/android/BluetoothChat/BluetoothChatService;
.super Ljava/lang/Object;
.source "BluetoothChatService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;,
        Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;,
        Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final MY_UUID_INSECURE:Ljava/util/UUID;

.field private static final MY_UUID_SECURE:Ljava/util/UUID;

.field private static final NAME_INSECURE:Ljava/lang/String; = "BluetoothChatInsecure"

.field private static final NAME_SECURE:Ljava/lang/String; = "BluetoothChatSecure"

.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_LISTEN:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothChatService"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

.field private mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

.field private final mHandler:Landroid/os/Handler;

.field private mInsecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

.field private mSecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "fa87c0d0-afac-11de-8a39-0800200c9a66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 50
    sput-object v0, Lcom/example/android/BluetoothChat/BluetoothChatService;->MY_UUID_SECURE:Ljava/util/UUID;

    .line 53
    const-string v0, "8ce255c0-200a-11e0-ac64-0800200c9a66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 52
    sput-object v0, Lcom/example/android/BluetoothChat/BluetoothChatService;->MY_UUID_INSECURE:Ljava/util/UUID;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mState:I

    .line 78
    iput-object p2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/example/android/BluetoothChat/BluetoothChatService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/example/android/BluetoothChat/BluetoothChatService;->MY_UUID_SECURE:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$2()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/example/android/BluetoothChat/BluetoothChatService;->MY_UUID_INSECURE:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$3(Lcom/example/android/BluetoothChat/BluetoothChatService;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mState:I

    return v0
.end method

.method static synthetic access$4(Lcom/example/android/BluetoothChat/BluetoothChatService;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->connectionFailed()V

    return-void
.end method

.method static synthetic access$5(Lcom/example/android/BluetoothChat/BluetoothChatService;Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    return-void
.end method

.method static synthetic access$6(Lcom/example/android/BluetoothChat/BluetoothChatService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/example/android/BluetoothChat/BluetoothChatService;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->connectionLost()V

    return-void
.end method

.method private connectionFailed()V
    .locals 4

    .prologue
    .line 235
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 236
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "toast"

    const-string v3, "Unable to connect device"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 239
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->start()V

    .line 243
    return-void
.end method

.method private connectionLost()V
    .locals 4

    .prologue
    .line 250
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 251
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "toast"

    const-string v3, "Device connection was lost"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 254
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->start()V

    .line 258
    return-void
.end method

.method private declared-synchronized setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothChatService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setState() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput p1, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mState:I

    .line 90
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "secure"    # Z

    .prologue
    const/4 v3, 0x2

    .line 130
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothChatService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mState:I

    if-ne v0, v3, :cond_0

    .line 134
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    .line 141
    :cond_1
    new-instance v0, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;-><init>(Lcom/example/android/BluetoothChat/BluetoothChatService;Landroid/bluetooth/BluetoothDevice;Z)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    .line 142
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;->start()V

    .line 143
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connected(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 5
    .param p1, "socket"    # Landroid/bluetooth/BluetoothSocket;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "socketType"    # Ljava/lang/String;

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connected, Socket Type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    invoke-virtual {v2}, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    invoke-virtual {v2}, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mSecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    if-eqz v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mSecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    invoke-virtual {v2}, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->cancel()V

    .line 164
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mSecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mInsecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mInsecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    invoke-virtual {v2}, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->cancel()V

    .line 168
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mInsecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    .line 172
    :cond_3
    new-instance v2, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    invoke-direct {v2, p0, p1, p3}, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;-><init>(Lcom/example/android/BluetoothChat/BluetoothChatService;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    .line 173
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    invoke-virtual {v2}, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->start()V

    .line 176
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 177
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "device_name"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 180
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChatService;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 153
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getState()I
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothChatService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    .line 111
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->setState(I)V

    .line 114
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mSecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    if-nez v0, :cond_2

    .line 115
    new-instance v0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;-><init>(Lcom/example/android/BluetoothChat/BluetoothChatService;Z)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mSecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    .line 116
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mSecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->start()V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mInsecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    if-nez v0, :cond_3

    .line 119
    new-instance v0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;-><init>(Lcom/example/android/BluetoothChat/BluetoothChatService;Z)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mInsecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    .line 120
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mInsecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_3
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothChatService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;->cancel()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectThread;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->cancel()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mSecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mSecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->cancel()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mSecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mInsecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mInsecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->cancel()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mInsecureAcceptThread:Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;

    .line 210
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([B)V
    .locals 3
    .param p1, "out"    # [B

    .prologue
    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget v1, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    monitor-exit p0

    .line 228
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChatService;->mConnectedThread:Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;

    .line 222
    .local v0, "r":Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v0, p1}, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->write([B)V

    goto :goto_0

    .line 222
    .end local v0    # "r":Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
