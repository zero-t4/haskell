{-|
  Определите представителя класса Functor для типа данных GeomPrimitive, который определён следующим образом:

  data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a)

  При определении, воспользуйтесь тем, что Point3D уже является представителем класса Functor.


  GHCi> fmap (+ 1) $ Point (Point3D 0 0 0)


  Point (Point3D 1 1 1)

  GHCi> fmap (+ 1) $ LineSegment (Point3D 0 0 0) (Point3D 1 1 1)

  LineSegment (Point3D 1 1 1) (Point3D 2 2 2)
-}

instance Functor GeomPrimitive where
  fmap f (Point p) = Point $ fmap f p
  fmap f (LineSegment p1 p2) = LineSegment (fmap f p1) (fmap f p2)
