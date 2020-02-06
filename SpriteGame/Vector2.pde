class Vector2
{
  float x, y; //coordinates of Vector2: instance variables
  
  //constructor: initialize an instance of a Vector2, going from class to object
  Vector2(float x, float y)
  {
    this.x = x; //'this' refers to the object itself
    this.y = y; //first y is the instance variable, second y is the one in parameters
  }
  
  //find the magnitude of the vector
  float magnitude()
  {
    return sqrt(x * x + y * y);
  }
  
  //add one vector to the other
  Vector2 add(Vector2 other) //Method Header, has 3 parts:
  {                             //return type:'Vector2'
                               //name:'add'
                               //parameters:'Vector2 other'
    return new Vector2(this.x + other.x, this.y + other.y);
    //adding xs and ys to make a new vector, calls Vector2 constructor
  }
  
  //subtract one vector from the other
  Vector2 subtract(Vector2 other)
  {
    return new Vector2(this.x - other.x, this.y - other.y);
  }
  
  //find the inverse of the vector: <-x, -y>
  Vector2 inverse()
  {
    return new Vector2(-1 * x, -1 * y);
  }
  
  //scale the vector by s: <s*x, s*y>
  Vector2 scale(float s)
  {
    return new Vector2(s * x, s * y); 
  }
  
  //find the perpendicular vector: <-y, x>
  Vector2 perpendicular()
  {
    return new Vector2(-this.y, this.x);
  }
  
  //find the unit vector: <x/magnitude, y/magnitude>
  Vector2 unitVector()
  {
    return new Vector2(this.x / this.magnitude(), this.y / this.magnitude());
  }
  
  //find the dot product: sum of x's multiplied and y's multiplied
  float dotProduct(Vector2 other)
  {
    return this.x * other.x + this.y * other.y;
  }
  
  //find the angle of the vector
  float angle(Vector2 other)
  {
    return atan(other.y / other.x);
  }
  
  //now using these methods (I think it goes here):
  //Vector2 v = new Vector2(3.7, 25.4);
  //Vector2 w = new Vector2(5.83, 3.14);
  //Vector2 sum = v.add(w);
  
}
