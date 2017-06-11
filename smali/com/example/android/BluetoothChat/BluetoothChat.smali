.class public Lcom/example/android/BluetoothChat/BluetoothChat;
.super Landroid/app/Activity;
.source "BluetoothChat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final D:Z = true

.field public static final DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final MESSAGE_DEVICE_NAME:I = 0x4

.field public static final MESSAGE_READ:I = 0x2

.field public static final MESSAGE_STATE_CHANGE:I = 0x1

.field public static final MESSAGE_TOAST:I = 0x5

.field public static final MESSAGE_WRITE:I = 0x3

.field private static final REQUEST_CONNECT_DEVICE_INSECURE:I = 0x2

.field private static final REQUEST_CONNECT_DEVICE_SECURE:I = 0x1

.field private static final REQUEST_ENABLE_BT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothChat"

.field public static final TOAST:Ljava/lang/String; = "toast"

.field public static m:I


# instance fields
.field public BF:I

.field public CRF:I

.field public GF:I

.field public GMF:I

.field public GV:I

.field public REC:I

.field public Re:Ljava/lang/String;

.field public SCR1:I

.field public SCR2:I

.field a:Landroid/widget/Button;

.field public anm:Landroid/view/animation/Animation;

.field public anm2:Landroid/view/animation/Animation;

.field public b1:Landroid/widget/Button;

.field public b10:Landroid/widget/Button;

.field public b11:Landroid/widget/Button;

.field public b12:Landroid/widget/Button;

.field public b13:Landroid/widget/Button;

.field public b14:Landroid/widget/Button;

.field public b15:Landroid/widget/Button;

.field public b16:Landroid/widget/Button;

.field public b17:Landroid/widget/Button;

.field public b18:Landroid/widget/Button;

.field public b19:Landroid/widget/Button;

.field public b2:Landroid/widget/Button;

.field public b20:Landroid/widget/Button;

.field public b21:Landroid/widget/Button;

.field public b22:Landroid/widget/Button;

.field public b23:Landroid/widget/Button;

.field public b24:Landroid/widget/Button;

.field public b25:Landroid/widget/Button;

.field public b3:Landroid/widget/Button;

.field public b4:Landroid/widget/Button;

.field public b5:Landroid/widget/Button;

.field public b6:Landroid/widget/Button;

.field public b7:Landroid/widget/Button;

.field public b8:Landroid/widget/Button;

.field public b9:Landroid/widget/Button;

.field public bf:[I

.field crazy:Ljava/util/Random;

.field public d1:I

.field public d2:I

.field f:Ljava/lang/String;

.field public fd1:I

.field public fd2:I

.field public fh1:I

.field public fh2:I

.field public fh3:I

.field public fh4:I

.field public fh5:I

.field public flag:I

.field public fv1:I

.field public fv2:I

.field public fv3:I

.field public fv4:I

.field public fv5:I

.field public h1:I

.field public h2:I

.field public h3:I

.field public h4:I

.field public h5:I

.field im1:Landroid/widget/ImageView;

.field im2:Landroid/widget/ImageView;

.field im3:Landroid/widget/ImageView;

.field im4:Landroid/widget/ImageView;

.field im5:Landroid/widget/ImageView;

.field j:Landroid/graphics/Typeface;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

.field private mConnectedDeviceName:Ljava/lang/String;

.field private mConversationArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConversationView:Landroid/widget/ListView;

.field private final mHandler:Landroid/os/Handler;

.field private mOutEditText:Landroid/widget/EditText;

.field private mOutStringBuffer:Ljava/lang/StringBuffer;

.field private mSendButton:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;

.field private mWriteListener:Landroid/widget/TextView$OnEditorActionListener;

.field public mtr:[[I

.field public press:I

.field public rand:I

.field public readMessage:Ljava/lang/String;

.field public rndb:Ljava/lang/Boolean;

.field public s1:Landroid/widget/Button;

.field public s2:Landroid/widget/Button;

.field public sf:I

.field public stk:[I

.field public str:Landroid/widget/Button;

.field t3:Landroid/widget/TextView;

.field public tf:I

.field public v1:I

.field public v2:I

.field public v3:I

.field public v4:I

.field public v5:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->stk:[I

    .line 74
    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    .line 75
    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sf:I

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->tf:I

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GV:I

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->BF:I

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->SCR1:I

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->SCR2:I

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->REC:I

    .line 78
    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->CRF:I

    .line 81
    const-string v0, "EOF"

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->Re:Ljava/lang/String;

    .line 85
    const/16 v0, 0x1a

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    .line 86
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    .line 104
    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 112
    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    .line 408
    new-instance v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;

    invoke-direct {v0, p0}, Lcom/example/android/BluetoothChat/BluetoothChat$1;-><init>(Lcom/example/android/BluetoothChat/BluetoothChat;)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mWriteListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 421
    new-instance v0, Lcom/example/android/BluetoothChat/BluetoothChat$2;

    invoke-direct {v0, p0}, Lcom/example/android/BluetoothChat/BluetoothChat$2;-><init>(Lcom/example/android/BluetoothChat/BluetoothChat;)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;

    return-void
.end method

.method private connectDevice(Landroid/content/Intent;Z)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "secure"    # Z

    .prologue
    .line 914
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 915
    sget-object v3, Lcom/example/android/BluetoothChat/DeviceListActivity;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 919
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v2, v1, p2}, Lcom/example/android/BluetoothChat/BluetoothChatService;->connect(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 920
    return-void
.end method

.method private ensureDiscoverable()V
    .locals 3

    .prologue
    .line 368
    const-string v1, "BluetoothChat"

    const-string v2, "ensure discoverable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    .line 370
    const/16 v2, 0x17

    .line 369
    if-eq v1, v2, :cond_0

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "discoverableIntent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->startActivity(Landroid/content/Intent;)V

    .line 375
    .end local v0    # "discoverableIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 388
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v1}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 389
    const v1, 0x7f060002

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 397
    .local v0, "send":[B
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v1, v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->write([B)V

    .line 400
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mOutStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 401
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mOutEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mOutStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupChat()V
    .locals 2

    .prologue
    .line 315
    const-string v0, "BluetoothChat"

    const-string v1, "setupChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030006

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 319
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mConversationView:Landroid/widget/ListView;

    .line 320
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mConversationView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mOutEditText:Landroid/widget/EditText;

    .line 324
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mOutEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mWriteListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 327
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSendButton:Landroid/widget/Button;

    .line 328
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSendButton:Landroid/widget/Button;

    new-instance v1, Lcom/example/android/BluetoothChat/BluetoothChat$3;

    invoke-direct {v1, p0}, Lcom/example/android/BluetoothChat/BluetoothChat$3;-><init>(Lcom/example/android/BluetoothChat/BluetoothChat;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    new-instance v0, Lcom/example/android/BluetoothChat/BluetoothChatService;

    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChatService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    .line 342
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mOutStringBuffer:Ljava/lang/StringBuffer;

    .line 343
    return-void
.end method


# virtual methods
.method check()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 1037
    const/4 v3, 0x0

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->d2:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->d1:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h5:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h4:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h3:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h2:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h1:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v5:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v4:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v3:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v2:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v1:I

    .line 1041
    const/4 v0, 0x4

    .line 1042
    .local v0, "f":I
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fd1:I

    if-nez v3, :cond_0

    .line 1044
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-le v1, v6, :cond_2

    .line 1067
    .end local v1    # "i":I
    :cond_0
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fd2:I

    if-nez v3, :cond_1

    .line 1069
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-le v1, v6, :cond_5

    .line 1088
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-le v1, v6, :cond_8

    .line 1155
    return-void

    .line 1046
    :cond_2
    move v2, v1

    .local v2, "j":I
    :goto_3
    if-le v2, v1, :cond_3

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1049
    :cond_3
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    if-ne v3, v4, :cond_4

    .line 1051
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->d1:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->d1:I

    .line 1052
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->d1:I

    if-ne v3, v5, :cond_4

    .line 1054
    invoke-virtual {p0, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->gameover(I)V

    .line 1056
    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fd1:I

    .line 1046
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1071
    .end local v2    # "j":I
    :cond_5
    move v2, v1

    .restart local v2    # "j":I
    :goto_4
    if-le v2, v1, :cond_6

    .line 1069
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1074
    :cond_6
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v3, v3, v0

    aget v3, v3, v2

    if-ne v3, v4, :cond_7

    .line 1076
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->d2:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->d2:I

    .line 1077
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->d2:I

    if-ne v3, v5, :cond_7

    .line 1079
    invoke-virtual {p0, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->gameover(I)V

    .line 1080
    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fd2:I

    .line 1084
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 1071
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1090
    .end local v2    # "j":I
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_5
    if-le v2, v6, :cond_9

    .line 1088
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1093
    :cond_9
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    if-ne v3, v4, :cond_e

    .line 1094
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv1:I

    if-nez v3, :cond_a

    if-nez v1, :cond_a

    .line 1096
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v1:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v1:I

    .line 1097
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v1:I

    if-ne v3, v5, :cond_a

    invoke-virtual {p0, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->gameover(I)V

    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv1:I

    .line 1099
    :cond_a
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv2:I

    if-nez v3, :cond_b

    if-ne v1, v4, :cond_b

    .line 1101
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v2:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v2:I

    .line 1102
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v2:I

    if-ne v3, v5, :cond_b

    invoke-virtual {p0, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->gameover(I)V

    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv2:I

    .line 1104
    :cond_b
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv3:I

    if-nez v3, :cond_c

    if-ne v1, v7, :cond_c

    .line 1106
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v3:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v3:I

    .line 1107
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v3:I

    if-ne v3, v5, :cond_c

    invoke-virtual {p0, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->gameover(I)V

    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv3:I

    .line 1110
    :cond_c
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv4:I

    if-nez v3, :cond_d

    if-ne v1, v8, :cond_d

    .line 1112
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v4:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v4:I

    .line 1113
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v4:I

    if-ne v3, v5, :cond_d

    invoke-virtual {p0, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->gameover(I)V

    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv4:I

    .line 1115
    :cond_d
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv5:I

    if-nez v3, :cond_e

    if-ne v1, v6, :cond_e

    .line 1117
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v5:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v5:I

    .line 1118
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v5:I

    if-ne v3, v5, :cond_e

    invoke-virtual {p0, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->gameover(I)V

    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv5:I

    .line 1125
    :cond_e
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    if-ne v3, v4, :cond_13

    .line 1127
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh1:I

    if-nez v3, :cond_f

    if-nez v2, :cond_f

    .line 1129
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h1:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h1:I

    .line 1130
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h1:I

    if-ne v3, v5, :cond_f

    invoke-virtual {p0, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->gameover(I)V

    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh1:I

    .line 1132
    :cond_f
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh2:I

    if-nez v3, :cond_10

    if-ne v2, v4, :cond_10

    .line 1134
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h2:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h2:I

    .line 1135
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h2:I

    if-ne v3, v5, :cond_10

    invoke-virtual {p0, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->gameover(I)V

    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh2:I

    .line 1137
    :cond_10
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh3:I

    if-nez v3, :cond_11

    if-ne v2, v7, :cond_11

    .line 1139
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h3:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h3:I

    .line 1140
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h3:I

    if-ne v3, v5, :cond_11

    invoke-virtual {p0, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->gameover(I)V

    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh3:I

    .line 1142
    :cond_11
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh4:I

    if-nez v3, :cond_12

    if-ne v2, v8, :cond_12

    .line 1144
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h4:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h4:I

    .line 1145
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h4:I

    if-ne v3, v5, :cond_12

    invoke-virtual {p0, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->gameover(I)V

    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh4:I

    .line 1147
    :cond_12
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh5:I

    if-nez v3, :cond_13

    if-ne v2, v6, :cond_13

    .line 1149
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h5:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h5:I

    .line 1150
    iget v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h5:I

    if-ne v3, v5, :cond_13

    invoke-virtual {p0, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->gameover(I)V

    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh5:I

    .line 1090
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5
.end method

.method ck()V
    .locals 2

    .prologue
    .line 1294
    iget v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-nez v0, :cond_0

    .line 1296
    const/4 v0, 0x1

    iput v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    .line 1297
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1298
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1307
    :goto_0
    return-void

    .line 1301
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    .line 1302
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1303
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method ck3()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1310
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->rndb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v0, v2, :cond_0

    .line 1314
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Your Turn"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1315
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1318
    :cond_0
    iget v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->rndb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1319
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "His Turn"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1320
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1324
    :cond_1
    return-void
.end method

.method clearmat()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 1276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 1289
    return-void

    .line 1279
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, v4, :cond_1

    .line 1276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1283
    :cond_1
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 1279
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method fff()V
    .locals 2

    .prologue
    .line 928
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/android/BluetoothChat/DeviceListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 929
    .local v0, "serverIntent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method gameover(I)V
    .locals 4
    .param p1, "fla"    # I

    .prologue
    const/4 v3, 0x0

    .line 958
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 960
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GF:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GF:I

    .line 961
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GF:I

    packed-switch v2, :pswitch_data_0

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 964
    :pswitch_0
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 968
    :pswitch_1
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 971
    :pswitch_2
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im3:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 974
    :pswitch_3
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im4:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 977
    :pswitch_4
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->Re:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 978
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im5:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 979
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 980
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v2, " You Win.. "

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 981
    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 982
    const-string v2, " Congrats  .. Do you Want Play Again"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 984
    const-string v2, "Play Again"

    new-instance v3, Lcom/example/android/BluetoothChat/BluetoothChat$4;

    invoke-direct {v3, p0}, Lcom/example/android/BluetoothChat/BluetoothChat$4;-><init>(Lcom/example/android/BluetoothChat/BluetoothChat;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 997
    const-string v2, "Verify"

    new-instance v3, Lcom/example/android/BluetoothChat/BluetoothChat$5;

    invoke-direct {v3, p0}, Lcom/example/android/BluetoothChat/BluetoothChat$5;-><init>(Lcom/example/android/BluetoothChat/BluetoothChat;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1023
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1025
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 961
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method genf(Ljava/lang/String;)V
    .locals 0
    .param p1, "fm"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 884
    const-string v0, "BluetoothChat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    packed-switch p1, :pswitch_data_0

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 888
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 889
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->connectDevice(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 894
    :pswitch_1
    if-ne p2, v3, :cond_0

    .line 895
    invoke-direct {p0, p3, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->connectDevice(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 900
    :pswitch_2
    if-ne p2, v3, :cond_1

    .line 902
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->setupChat()V

    goto :goto_0

    .line 905
    :cond_1
    const-string v0, "BluetoothChat"

    const-string v1, "BT not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const v0, 0x7f060003

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 907
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->finish()V

    goto :goto_0

    .line 885
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const v6, 0x7f02000f

    const/16 v5, 0x19

    const/4 v4, 0x1

    .line 1339
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->BF:I

    if-nez v2, :cond_34

    .line 1342
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080034

    if-ne v2, v3, :cond_0

    .line 1348
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v2}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v2

    if-eq v2, v8, :cond_33

    .line 1349
    const v2, 0x7f060002

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1354
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1356
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Connection Faild "

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1357
    const-string v2, "Please make a connection with your oponent before you start bingo.."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1359
    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1360
    const-string v2, "Connect"

    new-instance v3, Lcom/example/android/BluetoothChat/BluetoothChat$6;

    invoke-direct {v3, p0}, Lcom/example/android/BluetoothChat/BluetoothChat$6;-><init>(Lcom/example/android/BluetoothChat/BluetoothChat;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1369
    const-string v2, "Cancel"

    new-instance v3, Lcom/example/android/BluetoothChat/BluetoothChat$7;

    invoke-direct {v3, p0}, Lcom/example/android/BluetoothChat/BluetoothChat$7;-><init>(Lcom/example/android/BluetoothChat/BluetoothChat;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1382
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1384
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1413
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f08001a

    if-ne v2, v3, :cond_2

    .line 1415
    const v2, 0x7f08001a

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1416
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_1

    .line 1418
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1419
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1420
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_1

    .line 1424
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1430
    :cond_1
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_2

    .line 1432
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    if-nez v2, :cond_2

    .line 1437
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1439
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v4

    aput v4, v2, v8

    .line 1441
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1442
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x9

    aput v4, v2, v3

    .line 1443
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1445
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1455
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080017

    if-ne v2, v3, :cond_4

    .line 1457
    const v2, 0x7f080017

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1459
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_3

    .line 1461
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1462
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1463
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_3

    .line 1465
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1471
    :cond_3
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_4

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_4

    .line 1473
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    if-nez v2, :cond_4

    .line 1477
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1479
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v4

    aput v4, v2, v7

    .line 1481
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v3, 0x6

    aput v4, v2, v3

    .line 1482
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1483
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1484
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1491
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080019

    if-ne v2, v3, :cond_6

    .line 1494
    const v2, 0x7f080019

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1496
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_5

    .line 1498
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1499
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1500
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_5

    .line 1502
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1508
    :cond_5
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_6

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_6

    .line 1510
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    if-nez v2, :cond_6

    .line 1513
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1515
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1516
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v4

    const/4 v3, 0x2

    aput v4, v2, v3

    .line 1518
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x8

    aput v4, v2, v3

    .line 1519
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1520
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1529
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080018

    if-ne v2, v3, :cond_8

    .line 1532
    const v2, 0x7f080018

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1534
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_7

    .line 1536
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1537
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1538
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_7

    .line 1540
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1544
    :cond_7
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_8

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_8

    .line 1546
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    if-nez v2, :cond_8

    .line 1549
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1551
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1552
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v4

    aput v4, v2, v4

    .line 1553
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v3, 0x7

    aput v4, v2, v3

    .line 1554
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1556
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1561
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080012

    if-ne v2, v3, :cond_a

    .line 1564
    const v2, 0x7f080012

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1566
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_9

    .line 1568
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1569
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1570
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_9

    .line 1572
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1577
    :cond_9
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_a

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_a

    .line 1579
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    if-nez v2, :cond_a

    .line 1582
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1584
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1585
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v7

    aput v4, v2, v4

    .line 1586
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v3, 0x2

    aput v7, v2, v3

    .line 1587
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1588
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1595
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080013

    if-ne v2, v3, :cond_c

    .line 1598
    const v2, 0x7f080013

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1600
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_b

    .line 1602
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1603
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1604
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_b

    .line 1606
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1610
    :cond_b
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_c

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_c

    .line 1612
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    aget v2, v2, v8

    if-nez v2, :cond_c

    .line 1614
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1617
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1618
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v7

    const/4 v3, 0x2

    aput v4, v2, v3

    .line 1619
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    aput v4, v2, v8

    .line 1620
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1621
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1627
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080011

    if-ne v2, v3, :cond_e

    .line 1630
    const v2, 0x7f080011

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1632
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_d

    .line 1634
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1635
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1636
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_d

    .line 1638
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1642
    :cond_d
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_e

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_e

    .line 1644
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    aget v2, v2, v4

    if-nez v2, :cond_e

    .line 1647
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1649
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1651
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v7

    aput v4, v2, v7

    .line 1652
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    aput v4, v2, v4

    .line 1653
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1654
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1660
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080015

    if-ne v2, v3, :cond_10

    .line 1663
    const v2, 0x7f080015

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1664
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_f

    .line 1666
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1667
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1668
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_f

    .line 1670
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1675
    :cond_f
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_10

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_10

    .line 1678
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    if-nez v2, :cond_10

    .line 1680
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1683
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1684
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v7

    const/4 v3, 0x4

    aput v4, v2, v3

    .line 1685
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v3, 0x5

    aput v4, v2, v3

    .line 1686
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1687
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1695
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080014

    if-ne v2, v3, :cond_12

    .line 1698
    const v2, 0x7f080014

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1699
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_11

    .line 1701
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1702
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1703
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_11

    .line 1706
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1710
    :cond_11
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_12

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_12

    .line 1712
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    if-nez v2, :cond_12

    .line 1715
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1717
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1719
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v7

    aput v4, v2, v8

    .line 1720
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v3, 0x4

    aput v4, v2, v3

    .line 1721
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1722
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1729
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f08001b

    if-ne v2, v3, :cond_14

    .line 1732
    const v2, 0x7f08001b

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1734
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_13

    .line 1736
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1737
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1738
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_13

    .line 1740
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1745
    :cond_13
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_14

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_14

    .line 1748
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    if-nez v2, :cond_14

    .line 1752
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1753
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1756
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v4

    const/4 v3, 0x4

    aput v4, v2, v3

    .line 1757
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0xa

    aput v4, v2, v3

    .line 1758
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1764
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080020

    if-ne v2, v3, :cond_16

    .line 1767
    const v2, 0x7f080020

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1769
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_15

    .line 1771
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1772
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1773
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_15

    .line 1775
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1780
    :cond_15
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_16

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_16

    .line 1782
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0xe

    aget v2, v2, v3

    if-nez v2, :cond_16

    .line 1785
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1788
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1789
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v3, 0x2

    aget-object v2, v2, v3

    aput v4, v2, v8

    .line 1790
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0xe

    aput v4, v2, v3

    .line 1791
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1792
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1799
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f08001e

    if-ne v2, v3, :cond_18

    .line 1802
    const v2, 0x7f08001e

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1804
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_17

    .line 1806
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1807
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1808
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_17

    .line 1810
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1815
    :cond_17
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_18

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_18

    .line 1817
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0xc

    aget v2, v2, v3

    if-nez v2, :cond_18

    .line 1820
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1823
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1824
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v3, 0x2

    aget-object v2, v2, v3

    aput v4, v2, v4

    .line 1825
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0xc

    aput v4, v2, v3

    .line 1826
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1827
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1833
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f08001f

    if-ne v2, v3, :cond_1a

    .line 1836
    const v2, 0x7f08001f

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1837
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_19

    .line 1839
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1840
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1841
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_19

    .line 1843
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1848
    :cond_19
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_1a

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_1a

    .line 1850
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0xd

    aget v2, v2, v3

    if-nez v2, :cond_1a

    .line 1853
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1856
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1857
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aput v4, v2, v3

    .line 1858
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0xd

    aput v4, v2, v3

    .line 1859
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1860
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1865
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f08001d

    if-ne v2, v3, :cond_1c

    .line 1868
    const v2, 0x7f08001d

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1869
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_1b

    .line 1871
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1872
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1873
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_1b

    .line 1876
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1880
    :cond_1b
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_1c

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_1c

    .line 1882
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0xb

    aget v2, v2, v3

    if-nez v2, :cond_1c

    .line 1885
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1888
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1889
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v3, 0x2

    aget-object v2, v2, v3

    aput v4, v2, v7

    .line 1890
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0xb

    aput v4, v2, v3

    .line 1891
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1892
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1898
    :cond_1c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080021

    if-ne v2, v3, :cond_1e

    .line 1901
    const v2, 0x7f080021

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1903
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_1d

    .line 1906
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1907
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1908
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_1d

    .line 1910
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1916
    :cond_1d
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_1e

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_1e

    .line 1918
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0xf

    aget v2, v2, v3

    if-nez v2, :cond_1e

    .line 1921
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1924
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1925
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x4

    aput v4, v2, v3

    .line 1926
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0xf

    aput v4, v2, v3

    .line 1927
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1928
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1934
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080026

    if-ne v2, v3, :cond_20

    .line 1936
    const v2, 0x7f080026

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1938
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_1f

    .line 1940
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1941
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1942
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_1f

    .line 1944
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1949
    :cond_1f
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_20

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_20

    .line 1951
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x13

    aget v2, v2, v3

    if-nez v2, :cond_20

    .line 1954
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1957
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1958
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v8

    aput v4, v2, v8

    .line 1959
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x13

    aput v4, v2, v3

    .line 1960
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1961
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1968
    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080024

    if-ne v2, v3, :cond_22

    .line 1971
    const v2, 0x7f080024

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 1973
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_21

    .line 1975
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1976
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1977
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_21

    .line 1979
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 1984
    :cond_21
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_22

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_22

    .line 1986
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x11

    aget v2, v2, v3

    if-nez v2, :cond_22

    .line 1989
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1992
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 1993
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v8

    aput v4, v2, v4

    .line 1994
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x11

    aput v4, v2, v3

    .line 1995
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 1996
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 2001
    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080025

    if-ne v2, v3, :cond_24

    .line 2004
    const v2, 0x7f080025

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 2006
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_23

    .line 2008
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 2009
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2010
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_23

    .line 2012
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 2017
    :cond_23
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_24

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_24

    .line 2019
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x12

    aget v2, v2, v3

    if-nez v2, :cond_24

    .line 2022
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2025
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 2026
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v8

    const/4 v3, 0x2

    aput v4, v2, v3

    .line 2027
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x12

    aput v4, v2, v3

    .line 2028
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 2029
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 2035
    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080023

    if-ne v2, v3, :cond_26

    .line 2038
    const v2, 0x7f080023

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 2040
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_25

    .line 2042
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 2043
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2044
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_25

    .line 2046
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 2051
    :cond_25
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_26

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_26

    .line 2053
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x10

    aget v2, v2, v3

    if-nez v2, :cond_26

    .line 2056
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2059
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 2060
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v8

    aput v4, v2, v7

    .line 2061
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x10

    aput v4, v2, v3

    .line 2062
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 2063
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 2068
    :cond_26
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080027

    if-ne v2, v3, :cond_28

    .line 2071
    const v2, 0x7f080027

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 2073
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_27

    .line 2075
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 2076
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2077
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_27

    .line 2079
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 2084
    :cond_27
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_28

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_28

    .line 2086
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x14

    aget v2, v2, v3

    if-nez v2, :cond_28

    .line 2089
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2092
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 2093
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v2, v2, v8

    const/4 v3, 0x4

    aput v4, v2, v3

    .line 2094
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x14

    aput v4, v2, v3

    .line 2095
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 2096
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 2103
    :cond_28
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f08002c

    if-ne v2, v3, :cond_2a

    .line 2106
    const v2, 0x7f08002c

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 2108
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_29

    .line 2110
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 2111
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2112
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_29

    .line 2114
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 2118
    :cond_29
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_2a

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_2a

    .line 2120
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x18

    aget v2, v2, v3

    if-nez v2, :cond_2a

    .line 2123
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2126
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 2127
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v3, 0x4

    aget-object v2, v2, v3

    aput v4, v2, v8

    .line 2128
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x18

    aput v4, v2, v3

    .line 2129
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 2130
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 2136
    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f08002a

    if-ne v2, v3, :cond_2c

    .line 2139
    const v2, 0x7f08002a

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 2140
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_2b

    .line 2142
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 2143
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2144
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_2b

    .line 2146
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 2151
    :cond_2b
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_2c

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_2c

    .line 2153
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x16

    aget v2, v2, v3

    if-nez v2, :cond_2c

    .line 2156
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2159
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 2160
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v3, 0x4

    aget-object v2, v2, v3

    aput v4, v2, v4

    .line 2161
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x16

    aput v4, v2, v3

    .line 2162
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 2164
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 2173
    :cond_2c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f08002b

    if-ne v2, v3, :cond_2e

    .line 2175
    const v2, 0x7f08002b

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 2177
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_2d

    .line 2179
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 2180
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2181
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_2d

    .line 2183
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 2188
    :cond_2d
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_2e

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_2e

    .line 2190
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x17

    aget v2, v2, v3

    if-nez v2, :cond_2e

    .line 2193
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2196
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 2197
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aput v4, v2, v3

    .line 2198
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x17

    aput v4, v2, v3

    .line 2199
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 2200
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 2206
    :cond_2e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080029

    if-ne v2, v3, :cond_30

    .line 2209
    const v2, 0x7f080029

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 2211
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_2f

    .line 2213
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 2214
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2215
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_2f

    .line 2217
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 2222
    :cond_2f
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_30

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_30

    .line 2224
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x15

    aget v2, v2, v3

    if-nez v2, :cond_30

    .line 2227
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2230
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 2231
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v3, 0x4

    aget-object v2, v2, v3

    aput v4, v2, v7

    .line 2232
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v3, 0x15

    aput v4, v2, v3

    .line 2233
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 2235
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 2240
    :cond_30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f08002d

    if-ne v2, v3, :cond_32

    .line 2242
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    .line 2244
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    if-nez v2, :cond_31

    .line 2246
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 2247
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    sget v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2248
    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    if-ne v2, v5, :cond_31

    .line 2250
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->vie()V

    .line 2254
    :cond_31
    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    if-ne v2, v4, :cond_32

    iget v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    if-ne v2, v4, :cond_32

    .line 2256
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    aget v2, v2, v5

    if-nez v2, :cond_32

    .line 2259
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2262
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 2263
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x4

    aput v4, v2, v3

    .line 2264
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    aput v4, v2, v5

    .line 2265
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 2266
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 2291
    :cond_32
    :goto_1
    return-void

    .line 1391
    :cond_33
    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    .line 1392
    const-string v2, "confi"

    invoke-direct {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2287
    :cond_34
    invoke-virtual {p0, v7}, Lcom/example/android/BluetoothChat/BluetoothChat;->reset(I)V

    .line 2289
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    const-string v3, "<<Start Play>>"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x7

    const/16 v5, 0x8

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const-string v3, "BluetoothChat"

    const-string v4, "+++ ON CREATE +++"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0, v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->requestWindowFeature(I)Z

    .line 135
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->setContentView(I)V

    .line 136
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f030001

    invoke-virtual {v3, v6, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 141
    const v3, 0x7f08000b

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im1:Landroid/widget/ImageView;

    .line 142
    const v3, 0x7f08000c

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im2:Landroid/widget/ImageView;

    .line 143
    const v3, 0x7f08000d

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im3:Landroid/widget/ImageView;

    .line 144
    const v3, 0x7f08000e

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im4:Landroid/widget/ImageView;

    .line 145
    const v3, 0x7f08000f

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im5:Landroid/widget/ImageView;

    .line 147
    const v3, 0x7f080003

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mTitle:Landroid/widget/TextView;

    .line 148
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mTitle:Landroid/widget/TextView;

    const/high16 v4, 0x7f060000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 149
    const v3, 0x7f080004

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mTitle:Landroid/widget/TextView;

    .line 150
    const v3, 0x7f080031

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    .local v0, "a":Landroid/widget/TextView;
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    const v3, 0x7f080032

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 153
    .local v1, "af":Landroid/widget/Button;
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    const v3, 0x7f080030

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 155
    .local v2, "ff":Landroid/widget/ListView;
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 156
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "font/forever.TTF"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    .line 157
    const v3, 0x7f08001a

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b1:Landroid/widget/Button;

    .line 158
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b1:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b1:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    const v3, 0x7f080017

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b2:Landroid/widget/Button;

    .line 161
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b2:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b2:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    const v3, 0x7f080019

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b3:Landroid/widget/Button;

    .line 164
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b3:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b3:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v3, 0x7f080018

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b4:Landroid/widget/Button;

    .line 167
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b4:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 168
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b4:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v3, 0x7f080012

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b5:Landroid/widget/Button;

    .line 170
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b5:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 171
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b5:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b6:Landroid/widget/Button;

    .line 173
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b6:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 174
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b6:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v3, 0x7f080011

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b7:Landroid/widget/Button;

    .line 176
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b7:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 177
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b7:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v3, 0x7f080015

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b8:Landroid/widget/Button;

    .line 179
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b8:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 180
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b8:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v3, 0x7f080014

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b9:Landroid/widget/Button;

    .line 182
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b9:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b9:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 184
    const v3, 0x7f08001b

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b10:Landroid/widget/Button;

    .line 185
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b10:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b10:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 187
    const v3, 0x7f080020

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b11:Landroid/widget/Button;

    .line 188
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b11:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 189
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b11:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v3, 0x7f08001e

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b12:Landroid/widget/Button;

    .line 191
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b12:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 192
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b12:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v3, 0x7f08001f

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b13:Landroid/widget/Button;

    .line 194
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b13:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 195
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b13:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v3, 0x7f08001d

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b14:Landroid/widget/Button;

    .line 197
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b14:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 198
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b14:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v3, 0x7f080021

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b15:Landroid/widget/Button;

    .line 200
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b15:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 201
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b15:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v3, 0x7f080026

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b16:Landroid/widget/Button;

    .line 203
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b16:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 204
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b16:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v3, 0x7f080024

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b17:Landroid/widget/Button;

    .line 206
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b17:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 208
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b17:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v3, 0x7f080025

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b18:Landroid/widget/Button;

    .line 210
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b18:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 211
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b18:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v3, 0x7f080023

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b19:Landroid/widget/Button;

    .line 213
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b19:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b19:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 215
    const v3, 0x7f080027

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b20:Landroid/widget/Button;

    .line 216
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b20:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 217
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b20:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v3, 0x7f08002c

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b21:Landroid/widget/Button;

    .line 219
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b21:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 220
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b21:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v3, 0x7f08002a

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b22:Landroid/widget/Button;

    .line 222
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b22:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b22:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 224
    const v3, 0x7f08002b

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b23:Landroid/widget/Button;

    .line 225
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b23:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b23:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 227
    const v3, 0x7f080029

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b24:Landroid/widget/Button;

    .line 228
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b24:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 229
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b24:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b25:Landroid/widget/Button;

    .line 231
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b24:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 232
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b25:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b25:Landroid/widget/Button;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 234
    const v3, 0x7f080034

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    .line 235
    const v3, 0x7f040003

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->anm:Landroid/view/animation/Animation;

    .line 239
    const v3, 0x7f040002

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->anm2:Landroid/view/animation/Animation;

    .line 240
    const v3, 0x7f080001

    invoke-virtual {p0, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->t3:Landroid/widget/TextView;

    .line 241
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->t3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 242
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->crazy:Ljava/util/Random;

    .line 253
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 256
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_0

    .line 257
    const-string v3, "Bluetooth is not available"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 258
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->finish()V

    .line 261
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 925
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 926
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 361
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 363
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->stop()V

    .line 364
    :cond_0
    const-string v0, "BluetoothChat"

    const-string v1, "--- ON DESTROY ---"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, "serverIntent":Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 951
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 936
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "serverIntent":Landroid/content/Intent;
    const-class v2, Lcom/example/android/BluetoothChat/DeviceListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 937
    .restart local v0    # "serverIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 943
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "serverIntent":Landroid/content/Intent;
    const-class v2, Lcom/example/android/BluetoothChat/DeviceListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 944
    .restart local v0    # "serverIntent":Landroid/content/Intent;
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 948
    :pswitch_2
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->ensureDiscoverable()V

    goto :goto_0

    .line 933
    :pswitch_data_0
    .packed-switch 0x7f08003a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized onPause()V
    .locals 3

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 348
    const-string v0, "BluetoothChat"

    const-string v1, "- ON PAUSE -"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->stk:[I

    const/4 v1, 0x0

    sget v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 296
    const-string v0, "BluetoothChat"

    const-string v1, "+ ON RESUME +"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->stk:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 305
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_0
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 266
    const-string v2, "BluetoothChat"

    const-string v3, "++ ON START ++"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v2, 0x0

    sput v2, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 272
    new-instance v1, Lcom/example/android/BluetoothChat/ViewAnim;

    invoke-direct {v1}, Lcom/example/android/BluetoothChat/ViewAnim;-><init>()V

    .line 273
    .local v1, "obd":Lcom/example/android/BluetoothChat/ViewAnim;
    const v2, 0x7f040009

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->anm:Landroid/view/animation/Animation;

    .line 274
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->j:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 275
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 277
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 278
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->anm:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 280
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->anm:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 281
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im3:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->anm:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 282
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im4:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->anm:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 283
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im5:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->anm:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 284
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "enableIntent":Landroid/content/Intent;
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->startActivityForResult(Landroid/content/Intent;I)V

    .line 291
    .end local v0    # "enableIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->setupChat()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 355
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 356
    const-string v0, "BluetoothChat"

    const-string v1, "-- ON STOP --"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method reset(I)V
    .locals 7
    .param p1, "kk"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x1

    .line 1164
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1167
    if-eq p1, v4, :cond_0

    .line 1169
    :try_start_0
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b1:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1170
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b1:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1171
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b2:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b2:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1173
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b3:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b3:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1175
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b4:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b4:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1177
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b5:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b5:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1179
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b6:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b6:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1181
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b7:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b7:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1183
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b8:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b8:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1185
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b9:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b9:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1187
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b10:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b10:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1189
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b11:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b11:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1191
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b12:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1192
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b12:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1193
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b13:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b13:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1195
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b14:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b14:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1197
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b15:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b15:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1199
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b16:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b16:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1201
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b17:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b17:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1203
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b18:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b18:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1205
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b19:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b19:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1207
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b20:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b20:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1209
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b21:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b21:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1211
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b22:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b22:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1213
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b23:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b23:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1215
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b24:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b24:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1217
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b25:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b25:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1220
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    const-string v4, "<<Start Play>>"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    const v4, 0x7f020008

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1222
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->t3:Landroid/widget/TextView;

    const-string v4, "Fill and  start"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->tf:I

    .line 1227
    const/4 v3, 0x0

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh5:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh4:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh3:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh2:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fh1:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv5:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv4:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv3:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv2:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fv1:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fd2:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->fd1:I

    .line 1228
    const/4 v3, 0x0

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->d2:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->d1:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h5:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h4:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h3:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h2:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->h1:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v5:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v4:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v3:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v2:I

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->v1:I

    .line 1230
    const/4 v3, 0x0

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->REC:I

    .line 1231
    const/4 v3, 0x0

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    .line 1232
    const/4 v3, 0x0

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    .line 1233
    const/4 v3, 0x0

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sf:I

    .line 1234
    const/4 v3, 0x0

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GF:I

    .line 1235
    const/4 v3, 0x0

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->BF:I

    .line 1236
    const/4 v3, 0x0

    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->GV:I

    .line 1237
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->stk:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 1238
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->stk:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 1239
    const/4 v3, 0x0

    sput v3, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    .line 1240
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    .line 1241
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->b1:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1242
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im1:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1243
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im2:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1244
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im3:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1245
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im4:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1246
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->im5:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1249
    const/4 v2, 0x0

    .line 1251
    .local v2, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_1

    .line 1270
    .end local v0    # "i":I
    .end local v2    # "k":I
    :goto_1
    return-void

    .line 1254
    .restart local v0    # "i":I
    .restart local v2    # "k":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-lt v1, v6, :cond_2

    .line 1251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1256
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1257
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 1258
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aput v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1266
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "k":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method vie()V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Lcom/example/android/BluetoothChat/ViewAnim;

    invoke-direct {v0}, Lcom/example/android/BluetoothChat/ViewAnim;-><init>()V

    .line 117
    .local v0, "obd":Lcom/example/android/BluetoothChat/ViewAnim;
    const/4 v1, 0x1

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flag:I

    .line 119
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    return-void
.end method
