package Documentos;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import Modelo.Producto;

public class GenerarExcel {
    public void crearExcelProductos(List<Producto> listaProductos, OutputStream outputStream) throws IOException {
        // Crear un nuevo libro de Excel
        Workbook libroExcel = new XSSFWorkbook();

        // Crear una hoja en el libro de Excel
        Sheet hoja = libroExcel.createSheet("Productos");

        // Crear la cabecera de la tabla
        String[] cabecera = {"ID Producto", "Descripción", "Precio sin IGV", "Stock", "Categoría"};
        Row filaCabecera = hoja.createRow(0);
        for (int i = 0; i < cabecera.length; i++) {
            Cell celda = filaCabecera.createCell(i);
            celda.setCellValue(cabecera[i]);
        }

        // Escribir los datos de los productos en el archivo Excel
        int rowNum = 1;
        for (Producto producto : listaProductos) {
            Row fila = hoja.createRow(rowNum++);
            fila.createCell(0).setCellValue(producto.getIdProd());
            fila.createCell(1).setCellValue(producto.getDescripcion());
            fila.createCell(2).setCellValue(producto.getPrecio());
            fila.createCell(3).setCellValue(producto.getStock());
            fila.createCell(4).setCellValue(producto.getCategoria());
        }

        // Escribir el libro de Excel en el flujo de salida
        libroExcel.write(outputStream);
        libroExcel.close();
    }

}
