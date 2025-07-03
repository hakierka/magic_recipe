
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:magic_recipe_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:meta/meta.dart';

@visibleForTesting
var generateContent =
    (String apiKey, String prompt) async => (await GenerativeModel(
          model: 'gemini-1.5-flash-latest',
          apiKey: apiKey,
        ).generateContent(
          [Content.text(prompt)],
        ))
            .text;




class RecipesEndpoint extends Endpoint {   

  Future<Recipe> generateRecipe(Session session, String ingredients) async {
    final geminiApiKey = session.passwords['gemini'];
    if (geminiApiKey == null) {
      throw Exception('Gemini API key not found');
    }

    final prompt =
        'Generate a recipe using the following ingredients: $ingredients, always put the title '
        'of the recipe in the first line, and then the instructions. The recipe should be easy '
        'to follow and include all necessary steps. Please provide a detailed recipe.';

    final responseText = await generateContent(geminiApiKey, prompt);

    if (responseText == null || responseText.isEmpty) {
      throw Exception('No response from Gemini API');
    }
    final recipe = Recipe(
      author: 'Gemini',
      text: responseText,
      date: DateTime.now(),
      ingredients: ingredients,
    );

    final recipeWithId = await Recipe.db.insertRow(session, recipe);

    return recipeWithId;



  }

    Future<List<Recipe>> getRecipes(Session session) async {
    // Get all the recipes from the database, sorted by date.
      return Recipe.db.find(
        session,
        orderBy: (t) => t.date,
        orderDescending: true,
      );
  }
}
  
