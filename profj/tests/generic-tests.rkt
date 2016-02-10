(module full-tests mzscheme
  (require "profj-testing.ss"
           (lib "parameters.ss" "profj"))
  
  (prepare-for-tests "Generic")

  (execute-test
   "public class FieldDeclaration<K>
    {
      private K field;
            
      public FieldDeclaration()
      {
      }
    }" 'full #f "Generic Field Declaration")

  (execute-test
   "public class MethodReturnType<K>
    {
      private K field;
            
      public MethodReturnType()
      {
      }
    
      public K get()
      {
       return field;
      }
    }" 'full #f "Method Return Type")

  (execute-test
   "public class Multi<K, S>
    {
      private K field;
      S field2;
            
      public Multi()
      {
      }
    
      public K get()
      {
       return field;
      }
    }" 'full #f "Multiple Generic Types")

  (execute-test
   "public class MultiParam<K, T>
    {
      private K field;
      T field2;
            
    public MultiParam(K k, T t)
    {
     this.field = k;
     this.field2 = t;
    }
    
      public K get()
      {
       return field;
      }
    }" 'full #f "Multiple Genertic Method Parameters")
  
  
  (report-test-results))
