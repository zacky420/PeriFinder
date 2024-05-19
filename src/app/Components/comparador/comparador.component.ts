import { Component, OnInit } from '@angular/core';
import { Components } from '../../interfaces/components';
import { ComponentService } from '../../services/component.service';
import { Observable } from 'rxjs';
import { AsyncPipe, NgClass, NgFor, NgIf } from '@angular/common';
import { SelectorComponent } from '../../Shared/selector/selector.component';

@Component({
  selector: 'app-comparador',
  standalone:true,
  imports:[NgFor,NgIf,AsyncPipe,SelectorComponent,NgClass],
  templateUrl: './comparador.component.html',
  styleUrl: './comparador.component.css'
})
export class ComparadorComponent implements OnInit {
  componentes$: Observable<Components[]> | undefined;
  componente1: Components | null = null;
  componente2: Components | null = null;
  tipoSeleccionado: string = '';
  isTableVisible: boolean = false;

  constructor(private componenteService: ComponentService) { }

  ngOnInit(): void {
    this.obtenerComponentes();
  }

  obtenerComponentes(): void {
    this.componentes$ = this.componenteService.getAllComponents();
  }

  onTipoSeleccionado(tipo: string): void {
    this.tipoSeleccionado = tipo;
    this.isTableVisible = tipo !== 'Ninguna';
    this.componente1 = null;
    this.componente2 = null;
  }

  onComponenteSeleccionado(componente: Components): void {
    if (componente.tipo === this.tipoSeleccionado) {
      if (!this.componente1) {
        this.componente1 = componente;
      } else if (!this.componente2) {
        this.componente2 = componente;
      }
    }
  }

  obtenerCaracteristicas(componente: Components | null): string[] {
    if (!componente) {
      return [];
    }

    const caracteristicas: string[] = [];
    for (const key in componente) {
      if (componente.hasOwnProperty(key) && key !== 'imagen' && key !== 'id') {
        const value: any = (componente as any)[key];
        if (typeof value !== 'function' && value != null) {
          caracteristicas.push(key);
        }
      }
    }

    return caracteristicas;
  }

  obtenerValor(componente: Components | null, propiedad: string): any {
    return componente ? (componente as any)[propiedad] : '';
  }

  isSuperior(caracteristica: string, componenteA: Components | null, componenteB: Components | null): boolean {
    if (!componenteA || !componenteB) {
      return false;
    }

    const valorA = this.obtenerValor(componenteA, caracteristica);
    const valorB = this.obtenerValor(componenteB, caracteristica);

    if (caracteristica === 'precio') {
      return valorA < valorB; // Precio menor es mejor
    }

    if (typeof valorA === 'number' && typeof valorB === 'number') {
      return valorA > valorB;
    } else if (typeof valorA === 'string' && typeof valorB === 'string') {
      const numA = parseFloat(valorA.replace(/[^\d.]/g, ''));
      const numB = parseFloat(valorB.replace(/[^\d.]/g, ''));
      return !isNaN(numA) && !isNaN(numB) && numA > numB;
    }

    return false;
  }

  isInferior(caracteristica: string, componenteA: Components | null, componenteB: Components | null): boolean {
    if (!componenteA || !componenteB) {
      return false;
    }

    const valorA = this.obtenerValor(componenteA, caracteristica);
    const valorB = this.obtenerValor(componenteB, caracteristica);

    if (caracteristica === 'precio') {
      return valorA > valorB; // Precio mayor es peor
    }

    if (typeof valorA === 'number' && typeof valorB === 'number') {
      return valorA < valorB;
    } else if (typeof valorA === 'string' && typeof valorB === 'string') {
      const numA = parseFloat(valorA.replace(/[^\d.]/g, ''));
      const numB = parseFloat(valorB.replace(/[^\d.]/g, ''));
      return !isNaN(numA) && !isNaN(numB) && numA < numB;
    }

    return false;
  }
}