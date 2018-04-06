// ignore_for_file: type_annotate_public_apis, unused_element, unused_local_variable

import 'dart:math';
import 'package:dartlang_examples_util/ellipsis.dart';
import 'design_good.dart';

void miscDeclAnalyzedButNotTested() {
  (errors, monsters, subscription) {
    // #docregion code-like-prose
    // Telling errors to empty itself, or asking if it is?
    if (errors.empty as bool) {/*-...-*/}

    // Toggle what? To what?
    subscription.toggle();

    // Filter the monsters with claws *out* or include *only* those?
    monsters.filter((monster) => monster.hasClaws);
    // #enddocregion code-like-prose

    Iterable theCollectionOfErrors;
    // #docregion code-like-prose-overdone
    if (theCollectionOfErrors.isEmpty) {/*-...-*/}

    monsters.producesANewSequenceWhereEach((monster) => monster.hasClaws);
    // #enddocregion code-like-prose-overdone
  };

  () {
    // #docregion cascades
    var buffer = new StringBuffer0() //!<br>
        .write('one')
        .write('two')
        .write('three');
    // #enddocregion cascades
  };

  () {
    // #docregion type_annotate_public_apis
    install(id, destination) => ellipsis();
    // #enddocregion type_annotate_public_apis
  };

  () {
    // #docregion func-expr-no-param-type
    var names = people.map((Person person) {
      return person.name;
    });
    // #enddocregion func-expr-no-param-type
  };

  {
    // #docregion omit-types-on-locals
    List<List<Ingredient>> possibleDesserts(Set<Ingredient> pantry) {
      List<List<Ingredient>> recipes = <List<Ingredient>>[];
      for (List<Ingredient> ingredients in cookbook) {
        if (pantry.containsAll(ingredients)) {
          recipes.add(ingredients);
        }
      }

      return recipes;
    }
    // #enddocregion omit-types-on-locals
  }

  () {
    // #docregion prefer-dynamic
    mergeJson(original, changes) => ellipsis();
    // #enddocregion prefer-dynamic
  };

  // #docregion avoid-Function
  bool isValid(String value, Function test) => ellipsis();
  // #enddocregion avoid-Function

  (int start) {
    // #docregion avoid-mandatory-param
    var rest = string.substring(start, null);
    // #enddocregion avoid-mandatory-param
  };
}

class MyIterable<T> {
  // #docregion function-type-param
  Iterable<T> where(bool predicate(T element)) => ellipsis();
  // #enddocregion function-type-param
}

//----------------------------------------------------------------------------

// #docregion old-typedef
typedef int Comparison<T>(T a, T b);
// #enddocregion old-typedef

// #docregion typedef-param
typedef bool TestNumber(num);
// #enddocregion typedef-param

//----------------------------------------------------------------------------

class StringBuffer0 {
  StringBuffer0 write(dynamic _) => null;
}

//----------------------------------------------------------------------------
// ignore_for_file: one_member_abstracts

// #docregion one-member-abstract-class
abstract class Predicate<E> {
  bool test(E element);
}
// #enddocregion one-member-abstract-class

//----------------------------------------------------------------------------

// #docregion class-only-static
class DateUtils {
  static DateTime mostRecent(List<DateTime> dates) {
    return dates.reduce((a, b) => a.isAfter(b) ? a : b);
  }
}

class _Favorites {
  static const mammal = 'weasel';
}
// #enddocregion class-only-static

//----------------------------------------------------------------------------

// #docregion class-only-static-exception
class Color {
  static const red = '#f00';
  static const green = '#0f0';
  static const blue = '#00f';
  static const black = '#000';
  static const white = '#fff';
}
// #enddocregion class-only-static-exception

//----------------------------------------------------------------------------

// #docregion named-ctr
class Point {
  num x, y;
  Point(this.x, this.y);
  static Point polar(num theta, num radius) =>
      new Point(radius * cos(theta), radius * sin(theta));
}
// #enddocregion named-ctr

//----------------------------------------------------------------------------
// ignore_for_file: avoid_return_types_on_setters

class C<Foo> {
  // #docregion avoid_return_types_on_setters
  void set foo(Foo value) {/* ... */}
  // #enddocregion avoid_return_types_on_setters
}

//----------------------------------------------------------------------------
// ignore_for_file: annotate_overrides

// #docregion eq-dont-check-for-null
class Person1 {
  final String name;
  // #enddocregion eq-dont-check-for-null
  Person1(this.name);
  int get hashCode => ellipsis();
  // #docregion eq-dont-check-for-null
  operator ==(other) => other != null && ellipsis<bool>();
}
// #enddocregion eq-dont-check-for-null
