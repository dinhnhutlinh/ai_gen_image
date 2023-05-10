class Input {
  String? prompt;
  String? style;
  String? layout;
  String? sampler;
  double? cfgScale;
  String? modelVersion;
  int? amount;
  bool? isPublic;
  bool? isPriority;
  bool? hasImage;
  bool? isHd;
  String? negativePrompt;
  String? augmentedPrompt;
  int? steps;
  int? seed;
  String? customModelId;
  String? customModelName;

  Input({
    this.prompt,
    this.style,
    this.layout,
    this.sampler,
    this.cfgScale,
    this.modelVersion,
    this.amount,
    this.isPublic,
    this.isPriority,
    this.hasImage,
    this.isHd,
    this.negativePrompt,
    this.augmentedPrompt,
    this.steps,
    this.seed,
    this.customModelId,
    this.customModelName,
  });

  @override
  String toString() {
    return 'Input(prompt: $prompt, style: $style, layout: $layout, sampler: $sampler, cfgScale: $cfgScale, modelVersion: $modelVersion, amount: $amount, isPublic: $isPublic, isPriority: $isPriority, hasImage: $hasImage, isHd: $isHd, negativePrompt: $negativePrompt, augmentedPrompt: $augmentedPrompt, steps: $steps, seed: $seed, customModelId: $customModelId, customModelName: $customModelName)';
  }

  factory Input.fromJson(Map<String, dynamic> map) {
    return Input(
        prompt: map['prompt'] as String?,
        style: map['style'] as String?,
        layout: map['layout'] as String?,
        sampler: map['sampler'] as String?,
        cfgScale: map['cfgScale'] as double?,
        modelVersion: map['modelVersion'] as String?,
        amount: map['amount'] as int?,
        isPublic: map['isPublic'] as bool?,
        isPriority: map['isPriority'] as bool?,
        hasImage: map['hasImage'] as bool?,
        isHd: map['isHd'] as bool?,
        negativePrompt: map['negativePrompt'] as String?,
        augmentedPrompt: map['augmentedPrompt'] as String?,
        steps: map['steps'] as int?,
        seed: map['seed'] as int?,
        customModelId: map['customModelId'] as String?,
        customModelName: map['customModelName'] as String?);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'prompt': prompt,
        'style': style,
        'layout': layout,
        'sampler': sampler,
        'cfgScale': cfgScale,
        'modelVersion': modelVersion,
        'amount': amount,
        'isPublic': isPublic,
        'isPriority': isPriority,
        'hasImage': hasImage,
        'isHd': isHd,
        'negativePrompt': negativePrompt,
        'augmentedPrompt': augmentedPrompt,
        'steps': steps,
        'seed': seed,
        'customModelId': customModelId,
        'customModelName': customModelName,
      };

  Input copyWith({
    String? prompt,
    String? style,
    String? layout,
    String? sampler,
    double? cfgScale,
    String? modelVersion,
    int? amount,
    bool? isPublic,
    bool? isPriority,
    bool? hasImage,
    bool? isHd,
    String? negativePrompt,
    String? augmentedPrompt,
    int? steps,
    int? seed,
    String? customModelId,
    String? customModelName,
  }) {
    return Input(
      prompt: prompt ?? this.prompt,
      style: style ?? this.style,
      layout: layout ?? this.layout,
      sampler: sampler ?? this.sampler,
      cfgScale: cfgScale ?? this.cfgScale,
      modelVersion: modelVersion ?? this.modelVersion,
      amount: amount ?? this.amount,
      isPublic: isPublic ?? this.isPublic,
      isPriority: isPriority ?? this.isPriority,
      hasImage: hasImage ?? this.hasImage,
      isHd: isHd ?? this.isHd,
      negativePrompt: negativePrompt ?? this.negativePrompt,
      augmentedPrompt: augmentedPrompt ?? this.augmentedPrompt,
      steps: steps ?? this.steps,
      seed: seed ?? this.seed,
      customModelId: customModelId ?? this.customModelId,
      customModelName: customModelName ?? this.customModelName,
    );
  }
}
