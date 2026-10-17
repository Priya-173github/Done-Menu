class NormalizationService {
  static final Map<String, String> _synonyms = {
    'coriander': 'cilantro',
    'cilantro': 'coriander',
    'spring onion': 'scallion',
    'scallion': 'spring onion',
    'capsicum': 'bell pepper',
    'bell pepper': 'capsicum',
    'aubergine': 'eggplant',
    'eggplant': 'aubergine',
    'courgette': 'zucchini',
    'zucchini': 'courgette',
  };

  static String normalize(String input) {
    String cleaned = input.toLowerCase().trim();

    // Basic singularization rule
    if (cleaned.endsWith('s') &&
        cleaned.length > 3 &&
        !cleaned.endsWith('ss')) {
      cleaned = cleaned.substring(0, cleaned.length - 1);
    }

    // Resolve synonyms to canonical form
    return _synonyms[cleaned] ?? cleaned;
  }

  static bool doIngredientsMatch(String ingredientA, String ingredientB) {
    return normalize(ingredientA) == normalize(ingredientB);
  }
}
