import {Resource, ResourceWithoutId} from '@roadmap/shared';

interface AnimalFields {
  name?: string;
  pic?: string;
}

export interface Animal extends Resource, AnimalFields {}
export interface AnimalWithoutId extends ResourceWithoutId, AnimalFields {}
