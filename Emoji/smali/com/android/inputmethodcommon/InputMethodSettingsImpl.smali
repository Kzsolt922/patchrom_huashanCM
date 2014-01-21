.class Lcom/android/inputmethodcommon/InputMethodSettingsImpl;
.super Ljava/lang/Object;
.source "InputMethodSettingsImpl.java"

# interfaces
.implements Lcom/android/inputmethodcommon/InputMethodSettingsInterface;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mInputMethodSettingsCategoryTitle:Ljava/lang/CharSequence;

.field private mInputMethodSettingsCategoryTitleRes:I

.field private mSubtypeEnablerIcon:Landroid/graphics/drawable/Drawable;

.field private mSubtypeEnablerIconRes:I

.field private mSubtypeEnablerPreference:Landroid/preference/Preference;

.field private mSubtypeEnablerTitle:Ljava/lang/CharSequence;

.field private mSubtypeEnablerTitleRes:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethodcommon/InputMethodSettingsImpl;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->getSubtypeEnablerTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethodcommon/InputMethodSettingsImpl;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method private static getEnabledSubtypesLabel(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "imm"
    .parameter "imi"

    .prologue
    .line 109
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v5, 0x0

    .line 121
    :goto_0
    return-object v5

    .line 110
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p1, p2, v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 111
    .local v4, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 113
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 114
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 115
    .local v3, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 116
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_2
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p0, v5, v6}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    .end local v3           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static getMyImi(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 5
    .parameter "context"
    .parameter "imm"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 98
    .local v2, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 99
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 100
    .local v1, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    .end local v1           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return-object v1

    .line 98
    .restart local v1       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v1           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getSubtypeEnablerTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"

    .prologue
    .line 181
    iget v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    if-eqz v0, :cond_0

    .line 182
    iget v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)Z
    .locals 2
    .parameter "context"
    .parameter "prefScreen"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mContext:Landroid/content/Context;

    .line 60
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 61
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, v0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->getMyImi(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 67
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 68
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "category_language_setting"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 71
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    .line 72
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    new-instance v1, Lcom/android/inputmethodcommon/InputMethodSettingsImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl$1;-><init>(Lcom/android/inputmethodcommon/InputMethodSettingsImpl;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    const-string v1, "language_setting"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 92
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public setInputMethodSettingsCategoryTitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategoryTitleRes:I

    .line 129
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 130
    return-void
.end method

.method public setInputMethodSettingsCategoryTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategoryTitleRes:I

    .line 138
    iput-object p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategoryTitle:Ljava/lang/CharSequence;

    .line 139
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 140
    return-void
.end method

.method public setSubtypeEnablerIcon(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 166
    iput p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIconRes:I

    .line 167
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 168
    return-void
.end method

.method public setSubtypeEnablerIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIconRes:I

    .line 176
    iput-object p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIcon:Landroid/graphics/drawable/Drawable;

    .line 177
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 178
    return-void
.end method

.method public setSubtypeEnablerTitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 147
    iput p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    .line 148
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 149
    return-void
.end method

.method public setSubtypeEnablerTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    .line 157
    iput-object p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitle:Ljava/lang/CharSequence;

    .line 158
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 159
    return-void
.end method

.method public updateSubtypeEnabler()V
    .locals 4

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 190
    iget v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    if-eqz v1, :cond_4

    .line 191
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 195
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v1, v2, v3}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->getEnabledSubtypesLabel(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, summary:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    :cond_1
    iget v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIconRes:I

    if-eqz v1, :cond_5

    .line 200
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIconRes:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 206
    .end local v0           #summary:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_3

    .line 207
    iget v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategoryTitleRes:I

    if-eqz v1, :cond_6

    .line 208
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategory:Landroid/preference/PreferenceCategory;

    iget v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategoryTitleRes:I

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 213
    :cond_3
    :goto_2
    return-void

    .line 192
    :cond_4
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    .restart local v0       #summary:Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 209
    .end local v0           #summary:Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategoryTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 210
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategoryTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
