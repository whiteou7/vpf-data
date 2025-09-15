export type APIBody<T> = {
  success: boolean;
  data?: T;
  message?: string;
  error?: string;
}