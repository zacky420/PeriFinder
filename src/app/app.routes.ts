import { Routes } from '@angular/router';
import { InicioComponent } from './Components/inicio/inicio.component';
import { BudgetMakerComponent } from './Components/budget-maker/budget-maker.component';
import { ComparadorComponent } from './Components/comparador/comparador.component';
import { LeyendaComponent } from './Components/leyenda/leyenda.component';

export const routes: Routes = [


    { path: '', component:  InicioComponent},
    { path: 'BudgetMaker', component:  BudgetMakerComponent},
    { path: 'Comparador', component: ComparadorComponent},
    { path: 'Leyenda', component: LeyendaComponent }


];
