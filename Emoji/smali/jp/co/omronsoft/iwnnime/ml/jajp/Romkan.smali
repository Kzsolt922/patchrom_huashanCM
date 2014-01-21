.class public Ljp/co/omronsoft/iwnnime/ml/jajp/Romkan;
.super Ljava/lang/Object;
.source "Romkan.java"

# interfaces
.implements Ljp/co/omronsoft/iwnnime/ml/LetterConverter;


# static fields
.field private static final MAX_LENGTH:I = 0x4

.field private static final romkanTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/Romkan$1;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/Romkan$1;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/Romkan;->romkanTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method


# virtual methods
.method public convert(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)Z
    .locals 14
    .parameter "text"

    .prologue
    .line 156
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v1

    .line 158
    .local v1, cursor:I
    if-gtz v1, :cond_0

    .line 160
    const/4 v9, 0x0

    .line 201
    :goto_0
    return v9

    .line 163
    :cond_0
    const/4 v9, 0x4

    new-array v7, v9, [Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 164
    .local v7, str:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    const/4 v6, 0x4

    .line 165
    .local v6, start:I
    const/4 v9, 0x4

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 166
    .local v0, checkLength:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    if-gt v2, v0, :cond_1

    .line 167
    rsub-int/lit8 v9, v2, 0x4

    const/4 v10, 0x1

    sub-int v11, v1, v2

    invoke-virtual {p1, v10, v11}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v10

    aput-object v10, v7, v9

    .line 168
    add-int/lit8 v6, v6, -0x1

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    .local v3, key:Ljava/lang/StringBuffer;
    :goto_2
    const/4 v9, 0x4

    if-ge v6, v9, :cond_6

    .line 173
    move v2, v6

    :goto_3
    const/4 v9, 0x4

    if-ge v2, v9, :cond_2

    .line 174
    aget-object v9, v7, v2

    iget-object v9, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 176
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    .line 177
    .local v8, upper:Z
    sget-object v9, Ljp/co/omronsoft/iwnnime/ml/jajp/Romkan;->romkanTable:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 178
    .local v4, match:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 179
    if-eqz v8, :cond_3

    .line 180
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 183
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 184
    const/4 v9, 0x1

    new-array v5, v9, [Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 185
    .local v5, out:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    const/4 v9, 0x0

    new-instance v10, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    aget-object v11, v7, v6

    iget v11, v11, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    const/4 v12, 0x3

    aget-object v12, v7, v12

    iget v12, v12, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    invoke-direct {v10, v4, v11, v12}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v10, v5, v9

    .line 186
    const/4 v9, 0x1

    rsub-int/lit8 v10, v6, 0x4

    invoke-virtual {p1, v9, v5, v10}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->replaceStrSegment(I[Ljp/co/omronsoft/iwnnime/ml/StrSegment;I)V

    .line 195
    :goto_4
    const/4 v9, 0x1

    goto :goto_0

    .line 188
    .end local v5           #out:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_4
    const/4 v9, 0x2

    new-array v5, v9, [Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 189
    .restart local v5       #out:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    const/4 v9, 0x0

    new-instance v10, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    const/4 v11, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aget-object v12, v7, v6

    iget v12, v12, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    const/4 v13, 0x3

    aget-object v13, v7, v13

    iget v13, v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    add-int/lit8 v13, v13, -0x1

    invoke-direct {v10, v11, v12, v13}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v10, v5, v9

    .line 191
    const/4 v9, 0x1

    new-instance v10, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    aget-object v12, v7, v12

    iget v12, v12, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    const/4 v13, 0x3

    aget-object v13, v7, v13

    iget v13, v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    invoke-direct {v10, v11, v12, v13}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v10, v5, v9

    .line 193
    const/4 v9, 0x1

    rsub-int/lit8 v10, v6, 0x4

    invoke-virtual {p1, v9, v5, v10}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->replaceStrSegment(I[Ljp/co/omronsoft/iwnnime/ml/StrSegment;I)V

    goto :goto_4

    .line 197
    .end local v5           #out:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 198
    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 201
    .end local v4           #match:Ljava/lang/String;
    .end local v8           #upper:Z
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 205
    return-void
.end method
