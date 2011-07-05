HashMap seccionesCensales;

void setup() {
  
  String lineas[] = loadStrings("mapaCensal.csv"); 
  
  seccionesCensales = new HashMap();
  
  for (int i = 1; i < lineas.length; i++){
    String datos[] = lineas[i].split(";"); 
    
    HashMap distribuciones = new HashMap();
    
    ArrayList sexo = new ArrayList();
    ArrayList edad = new ArrayList();
    ArrayList procedencia = new ArrayList();
    
    sexo.add(int(datos[1])); // hombres
    sexo.add(int(datos[2])); // mujeres
    
    distribuciones.put("sexo", sexo);
    
    edad.add(int(datos[3])); // EDAT_0_A_14
    edad.add(int(datos[4])); // EDAT_15_A_24
    edad.add(int(datos[5])); // EDAT_25_A_64
    edad.add(int(datos[6])); // EDAT_65_A_MES
    
    distribuciones.put("edad", edad);
    
    procedencia.add(int(datos[7])); // NACIONALS
    procedencia.add(int(datos[8])); // COMUNITARIS
    procedencia.add(int(datos[9])); // ESTRANGERS
 
    distribuciones.put("procedencia", procedencia);

    seccionesCensales.put(datos[0], distribuciones);   
        
  }
  
  HashMap d =  (HashMap) seccionesCensales.get("02010");
  ArrayList edad = (ArrayList) d.get("edad");
  println(edad.get(2));
  
}

void draw(){
  
}

