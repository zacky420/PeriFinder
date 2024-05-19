import { Component, OnInit, } from '@angular/core';
import { Components } from '../../interfaces/components';
import { ComponentService } from '../../services/component.service';
import { Observable } from 'rxjs';
import { SelectorComponent } from '../../Shared/selector/selector.component';
import { AsyncPipe, CurrencyPipe, NgFor, NgIf } from '@angular/common';
@Component({
  selector: 'app-budget-maker',
  standalone:true,
  imports:[SelectorComponent,NgFor,NgIf,AsyncPipe,CurrencyPipe],
  templateUrl: './budget-maker.component.html',
  styleUrls: ['./budget-maker.component.css']
})
export class BudgetMakerComponent implements OnInit {
  componentes$!: Observable<Components[]>; // Usamos un Observable
  isTableVisible: boolean = false; // Controla la visibilidad de la tabla
  selectedTipo: string = ''; // Almacena el tipo de componente seleccionado
  selectedComponentes: Components[] = []; // Almacena los componentes seleccionados
  tiposComponentes: string[] = ['Ninguna', 'GPU', 'CPU', 'RAM', 'SSD', 'Placa Base', 'PSU']; // Definir tiposComponentes

  constructor(private componentService: ComponentService) { }

  ngOnInit(): void {
    // Inicialmente no cargamos todos los componentes
  }

  // Método para manejar la selección de tipo de componente
  onTipoSeleccionado(tipo: string): void {
    if (tipo !== 'Ninguna') {
      this.selectedTipo = tipo; // Almacena el tipo seleccionado
      this.isTableVisible = true; // Mostrar tabla si se selecciona un tipo
      this.componentes$ = this.componentService.getComponentsByType(tipo);
    } else {
      this.isTableVisible = false; // Ocultar tabla si se selecciona "Ninguna"
    }
  }

  // Método para manejar el clic en un componente
  onComponenteSeleccionado(componente: Components): void {
    // Agregar componente a la lista de componentes seleccionados
    this.selectedComponentes.push(componente);
    // Filtrar componentes disponibles para eliminar el tipo del componente seleccionado
    this.tiposComponentes = this.tiposComponentes.filter(tipo => tipo !== componente.tipo);
    // Ocultar la tabla de selección de componentes
    this.isTableVisible = false;
  }

  // Método para calcular el precio total de los componentes seleccionados
  calcularPrecioTotal(): number {
    return this.selectedComponentes.reduce((total, componente) => total + parseFloat(componente.precio.toString()), 0);
  }

  limpiarComponentesSeleccionados(): void {
    this.selectedComponentes = []; // Vaciar la lista de componentes seleccionados
    this.tiposComponentes = ['Ninguna', 'GPU', 'CPU', 'RAM', 'SSD', 'Placa Base', 'PSU']; // Restaurar los tipos de componentes
    this.isTableVisible = false; // Ocultar la tabla de componentes seleccionados
  }
}