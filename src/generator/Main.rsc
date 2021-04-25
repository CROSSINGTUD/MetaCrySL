module generator::Main

import IO;

import util::StringUtils; 

import lang::crysl::Parser; 
import lang::crysl::AbstractSyntax; 
import lang::refinement::AbstractSyntax;

import lang::configuration::AbstractSyntax; 
import lang::configuration::Parser;

import generator::Loader; 
import generator::PreProcessor; 
import generator::PrettyPrinter; 

void main(loc configurationFile) {
   try {
     Configuration c = parseConfiguration(configurationFile); 
     export(c, executePreProcessor(loadModules(c)));
     println("done");
   } 
   catch e: { 
     println(e);
   }    
}

void compileMetaCrysl(loc file) {
   parseSpecification(file);
}

void export(Configuration c, map[str, Spec] specs) {
   for(k <- specs) {
      println(k);
      str outputFile = c.out + "/" + toSimpleName(k) + ".cryptsl";
      loc p = |file:///| + outputFile ;
      println(p);
      writeFile(p, prettyPrint(specs[k]));  
   }
}