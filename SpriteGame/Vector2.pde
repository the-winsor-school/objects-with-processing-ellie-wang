class Vector2
{
  float x, y; //coordinates of Vector2: instance variables
  
  //constructor: initialize an instance of a Vector2, going from class to object
  Vector2(float x, float y)
  {
    this.x = x; //'this' refers to the object itself
    this.y = y; //first y is the instance variable, second y is the one in parameters
  }
  
  Vector2 add(Vector2 other) //ReturnType is Vector2, add is name, other is parameter
  {
    return new Vector2(this.x + other.x, this.y + other.y);
  }
}
