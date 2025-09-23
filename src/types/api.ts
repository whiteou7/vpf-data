export type APIBody<T> = {
  success: true;
  data: T | null;
  message?: string;
} | {
  success: false;
  message: string;
  error?: string;
}