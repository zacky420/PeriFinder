import { NgFor } from '@angular/common';
import { Component, EventEmitter, OnInit, Output } from '@angular/core';

@Component({
  selector: 'shared-selector',
  standalone:true,
  imports:[NgFor],
  templateUrl: './selector.component.html',
  styleUrl: './selector.component.css'
})
export class SelectorComponent implements OnInit {
  @Output() tipoSeleccionado = new EventEmitter<string>(); // Evento para emitir el tipo seleccionado
  tiposComponentes: string[] = ['Ninguna', 'GPU', 'CPU', 'RAM', 'SSD', 'Placa Base', 'PSU']; // Ejemplo de tipos de componentes

  constructor() { }

  ngOnInit(): void {
    // Aquí puedes obtener los tipos de componentes desde tu servicio si es necesario
  }

  // Método para emitir el tipo seleccionado cuando cambia el selector
  onTipoSeleccionado(event: Event): void {
    const tipo = (event.target as HTMLSelectElement).value;
    this.tipoSeleccionado.emit(tipo);
  }
}